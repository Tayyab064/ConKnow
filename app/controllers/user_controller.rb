class UserController < ApplicationController
	before_action :restrict_user, except: [:signin]

	def signin
		@user = User.create_with(user_params).find_or_create_by(email: params[:user][:email])
		@user.regenerate_access_token
		if params[:user][:device_token].present?
			if @user.device_tokens.count >= 5
				@user.device_tokens.delete_all
			end
			@user.device_tokens.create(device: params[:user][:device_name], token: params[:user][:device_token])
			#send notification to other mobile device that user login from other device
		end
		render status: :ok
	end

	def update
		@current_user.update(user_params)
		render status: :ok
	end

	private
	def user_params
		params.require(:user).permit(:name,:address,:gender,:first_language,:second_language,:dob)
	end
end

class UserController < ApplicationController
	before_action :restrict_user, except: [:signins]
	
	def signin
		@user = User.create_with(user_params).find_or_create_by(email: params[:user][:email])
		@user.regenerate_access_token
		render status: :ok
	end

	private
	def user_params
		params.require(:user).permit(:name,:address,:gender,:first_language,:second_language,:dob)
	end
end

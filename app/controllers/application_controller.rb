class ApplicationController < ActionController::Base
	include ActionController::HttpAuthentication::Token::ControllerMethods

	private
	def restrict_user
		restrict_access_to_user || render_unauthorized
	end

	def restrict_access_to_user
		authenticate_or_request_with_http_token do |token, _options|
			@current_user = User.find_by_access_token token if User.exists?(access_token: token)
		end
	end

	def render_unauthorized
		render json: 'Bad credentials', status: 401
	end
end

class SessionsController < ApplicationController
	include ApplicationHelper
	def new
	end

	def create
		user = User.find_by(email: params[:login][:email])
		# session[:user_id] = user.id.to_s
		# redirect_to users_path
		if user #&& user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to users_path
		# else
		# 	flash.now[:error] = "Your email address or password are incorrect." 
		# 	redirect_to login_path
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end

class UserMailer < ApplicationMailer
	default from: "order@thegoodegg.co"

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Thanks for signing up")
	end
end

class UserMailer < ApplicationMailer
	default from: "do-not-reply@thegoodegg.co"

	def welcome_email(user)
		@user = user
		mail(
			to: @user.email,
			subject: "Thanks for signing up, #{@user.name}"
			)
	end
end

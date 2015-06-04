class UserMailer < ApplicationMailer
	default from: "order@thegoodegg.co"

	# require 'mandrill'
	# m = Mandrill::API.new
	# message = {
	# 	:subject => "Hello from the Mandrill API",
	# 	:from_name => "Austin Kim",
	# 	:text => "Hi message, how are you?",
	# 	:to => [
	# 		{
	# 			:email => "recipient@theirdomain.com",
	# 			:name => "Recipient1"
	# 			}
	# 			],
	# 	:html => "<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
	# 	:from_email => "sender@yourdomain.com"
	# }
	# sending = m.messages.send message
	# puts sending

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Thanks for signing up")
	end

	
end

class OrderMailer < ApplicationMailer
	default from: "do-not-reply@thegoodegg.co"

	def order_email(user, order)
		@user = user
		@order = order
		mail(
			to: @user.email,
			subject: "Order No.#{order.id} Confirmation"
			)
	end
end

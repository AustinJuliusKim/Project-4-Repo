class CheckoutController < ApplicationController

	def show
		# @order = Order.find_by(order_status_id == 2)
	end

	def new
		@order = current_order
	end

	def create
		@order = current_order
		@order.order_status_id = 2
		if @order.save
			session[:order_id] = nil
			redirect_to checkout_path(@order)
		else
			render :new
		end
	end
end

class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
		render json: @order
	end

	def new
		@order = Order.new
	end

	def create
		my_details = params[:custom_order].to_json

		@order = Order.new({details: my_details})
		if @order.save
			redirect_to order_path(@order)
		else
			render :new
		end
	end

	def edit
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.update_attributes(order_params)
		if @order.save
			redirect_to orders_path
		else
			render :edit
		end
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to users_path, notice: "Order was successfully deleted."
	end

	private
	def order_params
		params.require(:order).permit(:price, :details, :user_id)
	end
	
end

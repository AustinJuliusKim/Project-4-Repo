class CartsController < ApplicationController
  before_action do |controller|
    unless controller .send(:user_signed_in?)
      flash[:error] = "You must be logged in"
      redirect_to new_user_session_path
    end
  end

 
  
  def show
    @order = current_order
    @order_items = current_order.order_items
  end

  # Edit and confirm order items and total  
  def checkout
    @user = current_user
    @order_items = current_order.order_items
    @order = current_order  
  end

  def order_placed
    @user = current_user
    @order_items = current_order.order_items
    @order = current_order
    @order.order_status_id = 2
    @order[:user_id] = @user.id
    if @order.total.nil?
      flash[:error] = "There are no items in your shopping cart"
      redirect_to products_path
    else
      if @order.save
        OrderMailer.order_email(@user, @order).deliver_now
        session[:order_id] = nil
        redirect_to @user,  notice: "Order was successfully placed."
      else
        render :checkout, notice: "Order was not completed."
      end
    end
  end
  
end


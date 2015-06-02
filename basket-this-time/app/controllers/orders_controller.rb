class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders

  def index
  end

  # GET /orders/1

  def show
    @order = current_order
    @orderitems = OrderItem.all
  end

  # GET /orders/new
  def new
  end


  def edit
  end


  def create
  end

  def update
  end


  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :total_price, :quantity)
    end
end

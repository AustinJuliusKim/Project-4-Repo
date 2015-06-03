class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order
  include ApplicationHelper

  def current_order
  	if !session[:order_id].nil?
  		Order.find(session[:order_id]) 
      #|| Order.where(id: ).first_or_initialize
  	else
  		Order.new
  	end
  end
end

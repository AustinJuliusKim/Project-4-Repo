module ApplicationHelper
	def dismiss_cart
    	session[:order_id] = nil
  	end
end

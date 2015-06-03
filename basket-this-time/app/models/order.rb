class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_status
  has_many :order_items, dependent: :destroy
  has_many :products


private
  def set_order_status
  	self.order_status_id = 1
  end
end

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_status
  has_many :order_items
  has_many :products




  private

end

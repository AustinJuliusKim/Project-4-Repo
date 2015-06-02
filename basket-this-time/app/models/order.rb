class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_status
  has_many :order_items, dependent: :destroy
  has_many :products




  private

end

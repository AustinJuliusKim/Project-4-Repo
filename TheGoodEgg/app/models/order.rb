class Order < ActiveRecord::Base
  belongs_to :order_status
  belongs_to :user
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal, :update_tax, :update_shipping, :update_total

  def subtotal
  	order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def tax
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) * 0.08 : 0 }.sum
  end

  def shipping
    0
  end

  def total
    self.subtotal + self.tax + self.shipping
  end


  private
  	def set_order_status
  		self.order_status_id = 1
  	end

  	def update_subtotal
  		self[:subtotal] = subtotal
  	end

      def update_tax
            self[:tax] = tax
      end

      def update_shipping
            self[:shipping] = 0
      end 

      def update_total
            self[:total] = total
      end


end

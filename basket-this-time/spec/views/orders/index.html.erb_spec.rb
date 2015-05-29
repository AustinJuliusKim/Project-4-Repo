require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :user => nil,
        :total_price => "Total Price",
        :quantity => "Quantity"
      ),
      Order.create!(
        :user => nil,
        :total_price => "Total Price",
        :quantity => "Quantity"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Total Price".to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :user => nil,
      :total_price => "Total Price",
      :quantity => "Quantity"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Total Price/)
    expect(rendered).to match(/Quantity/)
  end
end

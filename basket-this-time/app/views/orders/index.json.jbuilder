json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :total_price, :quantity
  json.url order_url(order, format: :json)
end

OrderItem.delete_all
Order.delete_all

Product.delete_all
Product.create! id: 1, name: "Jumbo Brown Egg", price: 0.49, active: true
Product.create! id: 2, name: "Jumbo White Egg", price: 0.39, active: true
Product.create! id: 3, name: "Large Brown Egg", price: 0.49, active: true
Product.create! id: 4, name: "Large White Egg", price: 0.39, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Completed"

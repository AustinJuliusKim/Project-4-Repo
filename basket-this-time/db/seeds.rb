

OrderItem.delete_all
Order.delete_all

Product.delete_all
Product.create! id: 1, name: "Banana"
Product.create! id: 2, name: "Apple"
Product.create! id: 3, name: "Carton of Strawberries"

OrderStatus.delete_all
OrderStatus.create! id: 1, status: "In Progress"
OrderStatus.create! id: 2, status: "Placed"
OrderStatus.create! id: 3, status: "Completed"
OrderStatus.create! id: 4, status: "Cancelled"
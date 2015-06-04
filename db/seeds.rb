# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jefferson = User.create(first_name: "Jefferson", last_name: "Choi", email: "jeffersonchoi@gmail.com", password: "123", password_confirmation: "123")
jonathan = User.create(first_name: "Jonathan", last_name: "Choi", email: "j@j.com", password: "123", password_confirmation: "123")

orange = Item.create(user_id: 1, item_name: "orange", stock_quantity: 10, marked_price: 1.0)
apple = Item.create(user_id: 1, item_name: "apple", stock_quantity: 20, marked_price: 2.0)
apple = Item.create(user_id: 2, item_name: "apple", stock_quantity: 10, marked_price: 2.0)
orange = Item.create(user_id: 2, item_name: "orange", stock_quantity: 20, marked_price: 1.0)

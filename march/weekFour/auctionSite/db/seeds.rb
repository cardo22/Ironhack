# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_1 = User.create(name: "Mike", email: "mike@gmail.com")
user_2 = User.create(name: "John", email: "j@yahoo.com")

product_1 = Product.create(user_id: user_1.id, title: "Mother's Day gift", price: 200.00, description: "Give mom the best gift this Mother's Day, like a Bulova Watch", deadline: Time.now + 1)

product_2 = Product.create(user_id: user_2.id, title: "Samsung Galaxy", price: 700.00, description: "Best phone of 2016, buy your mom one.", deadline: Time.now + 2)

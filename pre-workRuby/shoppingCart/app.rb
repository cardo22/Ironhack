require_relative("lib/shoppingCart.rb")
require_relative("lib/shoppingCart_item.rb")
require_relative("lib/houseWare.rb")
require_relative("lib/fruitClass.rb")

my_cart = ShoppingCart.new
household_items = HouseWare.new("Microwave", 159)
household_items_2 = HouseWare.new("Vacuum Cleaner", 150)
household_items_3 = HouseWare.new("Kettle", 30)
fruit_item_one = Fruits.new("Orange Juice", 10)
fruit_item_two = Fruits.new("Banana", 10)
fruit_item_three = Fruits.new("Anchovies", 2)
my_cart.put_items_in_cart(household_items)
my_cart.put_items_in_cart(household_items_2)
my_cart.put_items_in_cart(household_items_3)
my_cart.put_items_in_cart(fruit_item_one)
my_cart.put_items_in_cart(fruit_item_two)
my_cart.put_items_in_cart(fruit_item_three)
puts household_items.price
puts household_items_2.price
fruit_item_one.price
my_cart.checkout

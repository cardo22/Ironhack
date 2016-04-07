require_relative("lib/ingredient.rb")
require_relative("lib/shakeShack.rb")
require_relative("lib/shack_shop.rb")

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
banana_shake = banana
chocolate_shake = chocolate_chips
shake_list = Shack_shop.new
shake_list.add_shake(banana_shake)
shake_list.add_shake(chocolate_shake)


puts nizars_milkshake.price_of_milkshake
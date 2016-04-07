class Shack_shop
	attr_accessor :milk_shakes
	def initalize
		@milk_shakes = []
	end
	def add_shake(shakes)
		@milk_shakes.push(shakes)
	end
	def checkout
		total_price = 0
		@milk_shakes.each do |one_milkshake|
		total_price = total_price + one_milkshake.price_of_milkshake
		end
	end	
end
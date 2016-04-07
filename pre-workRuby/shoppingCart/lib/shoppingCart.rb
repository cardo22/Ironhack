class ShoppingCart
	attr_accessor :total, :items
	def initialize
		@total = 0
		@items = []
	end

	def put_items_in_cart(oneItem)
		@items.push(oneItem)
	end
	def checkout
		total = 0
		@items.each do |one_item|
			total += one_item.price 
		end
		puts total
	end
	def storeWide_discount
		discount = 0.1 * @price
		if @items.count > 5
			@price - discount
		end
	end
end

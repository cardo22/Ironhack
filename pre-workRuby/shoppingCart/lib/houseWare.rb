class HouseWare < Item
	def price
		discount = 0.05 * @price
		if @price > 100
			@price - discount
		end
	end
end
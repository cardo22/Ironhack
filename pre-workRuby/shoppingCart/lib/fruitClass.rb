class Fruits < Item
	def price
		t = Time.now
		discount = 0.1 * @price
		if t.friday? || t.saturday?
			@price - discount
		else
			@price
		end
	end
end
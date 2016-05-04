class SandwichViewsController < ApplicationController
	def index
	@sandwiches = Sandwich.all

	render 'index'
end

def show 
	@sandwich = Sandwich.find_by(id: params[:id])
	@ingredients = @sandwich.ingredients
	@ingredients_list = Ingredient.all
	# @calorie_sum = @ingredients.calories.inject(0){|sum, x| sum + x}

	render 'show'

end

def add
	sandwich = Sandwich.find_by(id: params[:id])
	ingredients = Ingredient.find_by(id: params[:ingredient_id])



	sandwich.ingredients.push(ingredient)

	render json: {sandwich:sandwich , ingredients:sandwich.ingredients }
end

private 



end

end

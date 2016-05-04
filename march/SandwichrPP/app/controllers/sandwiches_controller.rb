class SandwichesController < ApplicationController
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create 
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		ingredients = sandwich.ingredients
		unless sandwich
			render json: {error: "Sandwich not found"}, status: 404
			#using return here will prevent any further actions and return OUT of the show
		return
		end

		render json: {sandwich:sandwich , ingredients:ingredients }
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "Sandwich not found"}, status: 404
		return
		end

	sandwich.update(sandwich_params)

	render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "Sandwich not found"}, status: 404
		return
		end	

		sandwich.destroy

		render json: sandwich
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		
		sandwich.ingredients.push(ingredient)

		render json: {sandwich:sandwich , ingredients:sandwich.ingredients }

	end


	private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end
end
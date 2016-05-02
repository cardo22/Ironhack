class IngredientsController < ApplicationController

	def create
		ingredients = Ingredient.create(ingredient_params)
		render json: ingredients
	end

	def show
		ingredients = Ingredient.where(id: params[:id])
		if ingredients.nil?
			render json: {error: "ingredient not found"},
				status: 404
		render json: ingredient
	end

	def destroy
		ingredients = Ingredient.find_by(id: params[:id])
		if ingredients.nil?
			render json: {error: "ingredient not found"},
				status: 404
				return
		end

		ingredients.destroy

		render json: ingredient_params
	end

	private

	def ingredient_params
		params.require(:ingredient)
			.permit(:name, :calories)
	end
end

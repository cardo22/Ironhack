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
		if sandwich.nil?
			render json: {error: "sandwich not found"},
				status: 404
			return #return in this instance is like using an else
		end
		render json: sandwich
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich.nil?
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		sandwich.update(sandwich_params)

		render json: sandwich_params
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich.nil?
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		sandwich.destroy

		render json: sandwich_params
	end


	private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)
	end
end

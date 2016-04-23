class ProductsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@products = @user.products.order(created_at: :asc)
		                   .limit(20)
		render 'item_page'
	end

	def new
		@user = User.find(params[:user_id])
		@new_product = @user.products.new 
		# Product.new
		render 'sell_new'
	end

	def create
		@user = User.find(params[:user_id])
		@new_product = @user.products.new(product_entry_params)

		if @new_product.save
			redirect_to "/users/#{@user.id}/products"
		else
			render "sell_new"
		end
	end

	def show
		@show_product = Product.find params[:id]
		render "show_product_detail"
	end

	private

	def product_entry_params
		params.require(:product).permit(:title, :description, :deadline, :price)
	end
end

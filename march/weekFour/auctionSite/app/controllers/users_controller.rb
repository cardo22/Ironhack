class UsersController < ApplicationController
	def show
		@user = User.find params[:id]
		render 'user'
	end

	def new
		@new_user = User.new
		render 'new_user'
	end

	def create
		@user = User.new(user_params_entry)

		if @user.save
			redirect_to action: "show", controller: "users", id: @user.id
		else
			render "new_user"
		end
	end

	private

	def user_params_entry
		params.require(:user).permit(:name, :email)
	end
end

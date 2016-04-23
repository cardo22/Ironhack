class ConcertsController < ApplicationController
	def index
		@concerts = Concert.order(created_at: :asc)
		                   .limit(30)

		@today_concerts = Concert.where(date: Time.now..Time.now.hour) #needs to finish
		render "concertsHome"
	end

	def show
		@concerts = Concert.find(params[:id])
		render "details"
	end

	def new
		@concerts = Concert.new
		render "new_concert"
	end

	def create
		@concerts = Concert.new(concert_params)

		if @concerts.save
			redirect_to action: "index", controller: "concerts"
		else
			render "new_concert"
		end
	end

	private

	def concert_params
		params.require(:concert).permit(:name, :artist, :venue, :city, :date, :price, :description)
	end
end

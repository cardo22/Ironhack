class SiteController < ApplicationController
	def home #these meethods inside of your controller are also called actions.
		render 'home' #name of view template
	end
	def contact
		render 'display'
	end
end

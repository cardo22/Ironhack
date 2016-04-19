class SiteController < ApplicationController
	# my_project = Project.new(name: 'Ironhack', description: 'Description')
	# my_project.save
	# new_project = Project.create(name: 'Hackshow', description: 'Next month')
	def home #these meethods inside of your controller are also called actions.
		render 'home' #name of view template
	end
	def contact
		render 'display'
	end

	def say_name
		@name = params[:name]
		render 'say_name'
	end

	def calculator
		render 'calculator'
	end

	def calculate
		@num1 = params[:first_num].to_f
		@num2 = params[:second_num].to_f
		@result = @num1 + @num2

		render 'calculate'
	end
end





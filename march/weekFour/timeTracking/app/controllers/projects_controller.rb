class ProjectsController < ApplicationController
	def index
		new_project = Project.create(name: "Twice no description")
		@projects = Project.order(created_at: :desc)
		                   .limit(10)
		render 'index'
	end
end

class ProjectsController < ApplicationController
	def index
		new_project = Project.create(name: "Twice no description")
		@projects = Project.order(created_at: :desc)
		                   .limit(10)
		render 'index'
	end

	def show
		@my_project = Project.find(params[:id])
		render "show"
	end

	def new
		@project = Project.new
		render 'new'
	end

	def create
		@my_project = Project.create(
			:name => params[:project][:name],
			:description => params[:project][:description])
		redirect_to "/show_project/#{@my_project.id}"
	end
end

require 'sinatra'
require 'sinatra/reloader'

require_relative "lib/todo_list.rb"
require_relative "lib/task.rb"

# todo_list = TodoList.new("Ricardo")
# task = Task.new("Some Task to do ")
# task2 = Task.new("Another task to do")

# todo_list.add_task(Task.new("Walk the dog"))
# todo_list.add_task(Task.new("Buy the milk"))
# task = todo_list.find_task_by_id(1)
# puts task.content

# todo_list.load("tasks.yml")

get "/" do 
	"My first Sinatra app."
end

# get "/about_page" do
# 	erb(:about)
# end

get "/about_page" do 
	@greeting = "Welcome to my page!"
	erb(:about)
	# redirect_to("/time_page")
end

get "/time_page" do
	@time = Time.now
	erb(:current_time)
	# redirect_to("/about_page")
end

get "/hours/ago/:num" do
	hours = params[:num].to_i * 60 * 60
	time = Time.now - hours
	@adjusted_time = time
	erb(:hour_ago)
end




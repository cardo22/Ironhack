require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')

todo_list = TodoList.new("Ricardo")
task = Task.new("Some Task to do ")
task2 = Task.new("Another task to do")

todo_list.add_task(task)
todo_list.add_task(task2)

todo_list.load("tasks.yml")

get '/' do
  erb(:home)
end


get "/task" do 
	@all_task = todo_list.tasks
	"Welcome to the TodoList"
	erb(:task_index)
end

get "/new_task" do
  erb(:new_task)
end

post "/create_task" do 
	content = params[:task_content]
	task = Task.new(content)
	todo_list.add_task(task)
	redirect_to("/task")
end
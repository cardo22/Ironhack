require_relative("../lib/todo_list.rb")
require_relative("../lib/task.rb")

RSpec.describe TodoList do
  before :each do
    @list = TodoList.new
    @task = Task.new("throw away Amazon boxes")
    @task2 = Task.new("send SEVERAL cease and desist spam letters")
    @task3 = Task.new("put together desk")
  end

  describe "#add_task" do
    it "adds tasks to the list" do
      expect(@list.tasks.length).to eq(0)

      @list.add_task(@task)

      expect(@list.tasks.length).to eq(1)
    end
  end

  describe "#delete_task" do
    it "deletes the task with the given id" do
      @list.add_task(@task)
      @list.add_task(@task2)
      @list.add_task(@task3)

      expect(@list.tasks.length).to eq(3)

      @list.delete_task(@task3.id)

      expect(@list.tasks.length).to eq(2)

      @list.delete_task(@task2.id)

      expect(@list.tasks.length).to eq(1)
    end
  end
end
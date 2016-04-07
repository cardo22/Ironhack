require_relative "../lib/todo_list.rb"
require_relative "../lib/task.rb"

RSpec.describe TodoList do
  before :each do
    @list = TodoList.new("Ricardo")
    @task = Task.new("Go grocery shopping")
    @task2 = Task.new("Visit the dentist")
    @task3 = Task.new("Assemble new 3D printer")
  end

  describe "#complete!" do 
    it "check if task is complete" do 
      expect(@task.complete!).to eq(true)
    end
  end

  describe "#make_incomplete" do 
    it "make task incomplete" do 
      expect(@task.make_incomplete).to eq(false)
    end
  end

  describe "#add_task" do
    it "adds tasks to the list" do
    	expect(@list.tasks.length).to eq(0)

      @list.add_task(@task)

    	expect(@list.tasks.length).to eq(1)
    end
  end

  describe "#delete_task_by_id" do
    it "deletes the task with the given id" do
      @list.add_task(@task)
      @list.add_task(@task2)
      @list.add_task(@task3)

      expect(@list.tasks.length).to eq(3)

      @list.delete_task_by_id(@task3.id)

      expect(@list.tasks.length).to eq(2)

      @list.delete_task_by_id(@task2.id)

      expect(@list.tasks.length).to eq(1)

      @list.delete_task_by_id(@task)
    end
  end
end
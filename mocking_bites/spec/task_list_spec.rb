require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

it "returns all tasks" do
  task_list = TaskList.new
  task = double :fake_task
  task_list.add(task)
  expect(task_list.all).to eq [task]
end

  it "returns true if tasks complete" do
    task_list = TaskList.new
    task = double :fake_task, complete?: true
    task_list.add(task)
    expect(task_list.all_complete?).to eq true
    end

  it "returns false if tasks not complete" do
      task_list = TaskList.new
      task = double :fake_task, complete?: false
      task_list.add(task)
      expect(task_list.all_complete?).to eq false
      end
end



  # Unit test `#all` and `#all_complete?` behaviour

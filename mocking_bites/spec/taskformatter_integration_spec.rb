require 'taskformatter'
require 'task'

RSpec.describe "taskformatter_integration_spec" do
  it "formats the task when completed" do
  task = Task.new("play a game")
  task.mark_complete
  task.complete?
  taskformatter = TaskFormatter.new(task)
  expect(taskformatter.format).to eq "[x] play a game"
  end
  it "formats the task when not completed" do
    task = Task.new("wash your socks")
    task.complete?
    taskformatter = TaskFormatter.new(task)
    expect(taskformatter.format).to eq "[ ] wash your socks"
    end
  end

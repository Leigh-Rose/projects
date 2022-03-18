require "taskformatter"
RSpec.describe TaskFormatter do
  it "fails" do
    fake_task = double(:fake_task, title: "")
    formatter = TaskFormatter.new(fake_task)
    expect { formatter.format }.to raise_error "No task given"
  end
  it "formats a task if task complete" do
    fake_task = double(:fake_task, title: "wash your socks", complete?: true )
    formatter = TaskFormatter.new(fake_task)
    expect(formatter.format).to eq "[x] wash your socks"
  end
  it "doesn't format the task if task not complete" do
    fake_task = double(:fake_task, title: "wash your socks", complete?: false )
    formatter = TaskFormatter.new(fake_task)
    expect(formatter.format).to eq "[ ] wash your socks"
  end
end

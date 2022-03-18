class TaskFormatter
  def initialize(task)
    @task = task # task is an instance of Task
  end

  def format
    fail"No task given" if @task.title == ""

    if @task.complete? == true
      "[x] #{@task.title}"
    else puts
      "[ ] #{@task.title}"
end
end
end

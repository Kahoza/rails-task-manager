class TasksController < ApplicationController


 #display all tasks
  def index
    @tasks = Task.all
  end
  # show an specific task based on the id
  def show
    @task = Task.find(params[:id])
  end
  # show the form to user to get the input
  def new
    @task = Task.new
  end
  #create the task using the user's imput
  #once the task is created we go back to the index to display all tasks
  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end
  #target the task the user wants to modify
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

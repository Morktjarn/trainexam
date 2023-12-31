class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)

    if @task.save
      redirect_to tasks_path, notice: "Task created successfully."
    else
      flash.now[:alert] = "Error creating task."
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end

  private

  def params_task
    params.require(:task).permit(:title, :description, :status, :priority, :limite_date)
  end
end

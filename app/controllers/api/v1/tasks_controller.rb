class Api::V1::TasksController < ApplicationController

  def index 
    @tasks = Task.all
    render json: @tasks
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task
    else
      render json: {error: 'Error creating task'}
    end
  end

  # def update
  #   @task = Task.find(params[:id])
  #   @task.update(title: params["task"]["title"])
  #   @task.save
  #   render json: @task
  # end

   def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

end

class TasksController < ApplicationController
    before_action :set_task, only: [:show]
  
    def index
      render json: ["foi"]
    end
  
    def show
      render json: @task
    end
  
    def create
      task = Task.new(params[:nome], params[:idade])
      render json: task, status: :created
    end
  
    # Implemente ações update e destroy conforme necessário.
  
    private
  
    def set_task
      @task = Task.find(params[:id].to_i)
    end
  end
  
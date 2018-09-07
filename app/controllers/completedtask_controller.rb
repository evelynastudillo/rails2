class CompletedtaskController < ApplicationController
  before_action :authenticate_user!
  def create
    @todo = Todo.find(params[:todo_id])
    @completedtask = Completedtask.new(todo: @todo, user: current_user)
    if @completedtask.save
      redirect_to root_path, notice: 'tarea asignada'
    else
      redirect_to roo_path, alert: 'la tarea se fue'
  end
end

def index
  @completedtasks = current_user.completedtasks
end
end

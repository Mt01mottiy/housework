class WorksController < ApplicationController
 def index
  @tasks = Workdetail.order('limit_date').all
 end
 
 def show
 end

 def new
  @task = Workdetail.new
 end
 
 def create
  @task = Workdetail.new(task_params)
  
  if @task.save
   redirect_to works_path, success: "作成しました"
  else
   flash.now[:danger] = "未記入です"
   render "new"
  end
  
 end
 
 def update
 end
 
 def destroy
  @task = Workdetail.find_by(id: params[:id])
    if @task.destroy
     redirect_to works_path
    else
     render "new"
    end
 end
end

private
 def task_params
  params.require(:workdetail).permit(:task,:limit_date)
 end
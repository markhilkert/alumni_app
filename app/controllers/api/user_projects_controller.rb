class Api::UserProjectsController < ApplicationController
  def index
    @user_projects = UserProject.all
    render 'index.json.jbuilder'
  end

  def create
    @user_project = UserProject.new(
                              user_id: params[:user_id],
                              project_id: params[:project_id]
                              )
    
    if @user_project.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user_project = UserProject.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user_project = UserProject.find(params[:id])

    @user_project.user_id = params[:user_id] || @user_project.user_id
    @user_project.project_id = params[:project_id] || @user_project.project_id

    if @user_project.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_project = UserProject.find(params[:id])
    user_project.destroy
    render json: {message: "Successfully removed user_project."}
  end
end

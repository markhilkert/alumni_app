class Api::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render 'index.json.jbuilder'
  end

  def create
    @project = Project.new(
                              title: params[:title],
                              technology: params[:technology],
                              description: params[:description],
                              type: params[:type]
                              )
    
    if @project.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @project = Project.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @project = Project.find(params[:id])

    @project.title = params[:title] || @project.title
    @project.technology = params[:technology] || @project.technology
    @project.description = params[:description] || @project.description
    @project.type = params[:type] || @project.type

    if @project.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: {message: "Successfully removed project."}
  end
end

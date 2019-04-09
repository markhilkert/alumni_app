class Api::ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    render 'index.json.jbuilder'
  end

  def create
    @resource = Resource.new(
                              title: params[:title],
                              description: params[:description],
                              url: params[:url],
                              date: params[:date],
                              category: params[:category]
                              )
    
    if @resource.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @resource.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @resource = Resource.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @resource = Resource.find(params[:id])

    @resource.title = params[:title] || @resource.title
    @resource.description = params[:description] || @resource.description
    @resource.url = params[:url] || @resource.url
    @resource.date = params[:date] || @resource.date
    @resource.category = params[:category] || @resource.category

    if @resource.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @resource.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    resource = Resource.find(params[:id])
    resource.destroy
    render json: {message: "Successfully removed resource."}
  end
end

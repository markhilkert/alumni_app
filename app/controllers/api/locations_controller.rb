class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render 'index.json.jbuilder'
  end

  def create
    @location = Location.new(
                              city: params[:city],
                              state: params[:state]
                              )
    
    if @location.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @location.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @location = Location.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @location = Location.find(params[:id])

    @location.city = params[:city] || @location.city
    @location.state = params[:state] || @location.state

    if @location.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @location.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy
    render json: {message: "Successfully removed location."}
  end
end

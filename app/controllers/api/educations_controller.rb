class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def create
    @education = Education.new(
                              location_id: params[:location_id],
                              school: params[:school]
                              )
    
    if @education.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @education = Education.find(params[:id])

    @education.location_id = params[:location_id] || @education.location_id
    @education.school = params[:school] || @education.school

    if @education.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    education = Education.find(params[:id])
    education.destroy
    render json: {message: "Successfully removed education."}
  end
end

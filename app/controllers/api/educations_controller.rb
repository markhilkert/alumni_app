class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def create
    @education = Education.new(
                              profile_id: params[:profile_id],
                              school: params[:school],
                              degree: params[:degree],
                              field: params[:field],
                              graduation_date: params[:graduation_date]
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

    @education.profile_id = params[:profile_id] || @education.profile_id
    @education.school = params[:school] || @education.school
    @education.degree = params[:degree] || @education.degree
    @education.field = params[:field] || @education.field
    @education.graduation_date = params[:graduation_date] || @education.graduation_date

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

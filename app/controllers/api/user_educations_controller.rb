class Api::UserEducationsController < ApplicationController
  def index
    @user_educations = UserEducation.all
    render 'index.json.jbuilder'
  end

  def create
    @user_education = UserEducation.new(
                              user_id: params[:user_id],
                              education_id: params[:education_id],
                              graduation_date: params[:graduation_date],
                              degree: params[:degree],
                              field: params[:field]
                              )
    
    if @user_education.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user_education = UserEducation.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user_education = UserEducation.find(params[:id])

    @user_education.user_id = params[:user_id] || @user_education.user_id
    @user_education.education_id = params[:education_id] || @user_education.education_id
    @user_education.graduation_date = params[:graduation_date] || @user_education.graduation_date
    @user_education.degree = params[:degree] || @user_education.degree
    @user_education.field = params[:field] || @user_education.field

    if @user_education.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_education = UserEducation.find(params[:id])
    user_education.destroy
    render json: {message: "Successfully removed user_education."}
  end
end

class Api::UserJobsController < ApplicationController
  def index
    @user_jobs = UserJob.all
    render 'index.json.jbuilder'
  end

  def create
    @user_job = UserJob.new(
                              user_id: params[:user_id],
                              job_id: params[:job_id],
                              start_date: params[:start_date],
                              end_date: params[:end_date]
                              )
    
    if @user_job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user_job = UserJob.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user_job = UserJob.find(params[:id])

    @user_job.user_id = params[:user_id] || @user_job.user_id
    @user_job.job_id = params[:job_id] || @user_job.job_id
    @user_job.start_date = params[:start_date] || @user_job.start_date
    @user_job.end_date = params[:end_date] || @user_job.end_date

    if @user_job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_job = UserJob.find(params[:id])
    user_job.destroy
    render json: {message: "Successfully removed user_job."}
  end
end

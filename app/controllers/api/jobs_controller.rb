class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.json.jbuilder'
  end

  def create
    @job = Job.new(
                              profile_id: params[:profile_id],
                              location_id: params[:location_id],
                              title: params[:title],
                              company_id: params[:company_id],
                              start_date: params[:start_date],
                              end_date: params[:end_date],
                              description: params[:description]
                              )
    
    if @job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @job = Job.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @job = Job.find(params[:id])

    @job.profile_id = params[:profile_id] || @job.profile_id
    @job.location_id = params[:location_id] || @job.location_id
    @job.title = params[:title] || @job.title
    @job.company_id = params[:company_id] || @job.company_id
    @job.start_date = params[:start_date] || @job.start_date
    @job.end_date = params[:end_date] || @job.end_date
    @job.description = params[:description] || @job.description

    if @job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    render json: {message: "Successfully removed job."}
  end
end

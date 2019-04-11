class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.json.jbuilder'
  end

  def create
    @job = Job.new(
                              location_id: params[:location_id],
                              title: params[:title],
                              company_id: params[:company_id],
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

    @job.location_id = params[:location_id] || @job.location_id
    @job.title = params[:title] || @job.title
    @job.company_id = params[:company_id] || @job.company_id
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

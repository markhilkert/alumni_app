class Api::CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render 'index.json.jbuilder'
  end

  def create
    @company = Company.new(
                              name: params[:name],
                              url: params[:url]
                              )
    
    if @company.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @company = Company.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @company = Company.find(params[:id])

    @company.name = params[:name] || @company.name
    @company.url = params[:url] || @company.url

    if @company.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    render json: {message: "Successfully removed company."}
  end
end

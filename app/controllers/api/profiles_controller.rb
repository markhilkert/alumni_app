class Api::ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render 'index.json.jbuilder'
  end

  def create
    @profile = Profile.new(
                              user_id: params[:user_id],
                              skill_id: params[:skill_id],
                              job_id: params[:job_id],
                              project_id: params[:project_id],
                              location_id: params[:location_id],
                              education_id: params[:education_id],
                              title: params[:title],
                              bio: params[:bio],
                              linkedin_url: params[:linkedin_url],
                              github_url: params[:github_url],
                              personal_website_url: params[:personal_website_url],
                              picture_url: params[:picture_url]
                              )
    
    if @profile.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @profile.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @profile = Profile.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @profile = Profile.find(params[:id])

    @profile.user_id = params[:user_id] || @profile.user_id
    @profile.skill_id = params[:skill_id] || @profile.skill_id
    @profile.job_id = params[:job_id] || @profile.job_id
    @profile.project_id = params[:project_id] || @profile.project_id
    @profile.location_id = params[:location_id] || @profile.location_id
    @profile.education_id = params[:education_id] || @profile.education_id
    @profile.title = params[:title] || @profile.title
    @profile.bio = params[:bio] || @profile.bio
    @profile.linkedin_url = params[:linkedin_url] || @profile.linkedin_url
    @profile.github_url = params[:github_url] || @profile.github_url
    @profile.personal_website_url = params[:personal_website_url] || @profile.personal_website_url
    @profile.picture_url = params[:picture_url] || @profile.picture_url

    if @profile.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @profile.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    render json: {message: "Successfully removed profile."}
  end
end

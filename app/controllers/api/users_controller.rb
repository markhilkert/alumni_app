class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
                              location_id: params[:location_id],
                              status: params[:status],
                              admin: params[:admin],
                              email: params[:email],
                              password: params[:password],
                              password_confirmation: params[:password_confirmation],
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              title: params[:title],
                              bio: params[:bio],
                              linkedin_url: params[:linkedin_url],
                              github_url: params[:github_url],
                              personal_website_url: params[:personal_website_url],
                              picture_url: params[:picture_url]
                              )
    
    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])

    
    @user.location_id = params[:location_id] || @user.location_id
    @user.status = params[:status] || @user.status
    @user.admin = params[:admin] || @user.admin
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.title = params[:title] || @user.title
    @user.bio = params[:bio] || @user.bio
    @user.linkedin_url = params[:linkedin_url] || @user.linkedin_url
    @user.github_url = params[:github_url] || @user.github_url
    @user.personal_website_url = params[:personal_website_url] || @user.personal_website_url
    @user.picture_url = params[:picture_url] || @user.picture_url

    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "Successfully removed user."}
  end
end

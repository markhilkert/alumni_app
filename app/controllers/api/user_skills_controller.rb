class Api::UserSkillsController < ApplicationController
  def index
    @user_skills = UserSkill.all
    render 'index.json.jbuilder'
  end

  def create
    @user_skill = UserSkill.new(
                              user_id: params[:user_id],
                              skill_id: params[:skill_id],
                              competence: params[:competence],
                              years_of_experience: params[:years_of_experience]
                              )
    
    if @user_skill.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user_skill = UserSkill.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user_skill = UserSkill.find(params[:id])

    @user_skill.user_id = params[:user_id] || @user_skill.user_id
    @user_skill.skill_id = params[:skill_id] || @user_skill.skill_id
    @user_skill.competence = params[:competence] || @user_skill.competence
    @user_skill.years_of_experience = params[:years_of_experience] || @user_skill.years_of_experience

    if @user_skill.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user_skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_skill = UserSkill.find(params[:id])
    user_skill.destroy
    render json: {message: "Successfully removed user_skill."}
  end
end

class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :user_jobs
  has_many :jobs, through: :user_jobs
  has_many :companies, through: :jobs
  has_many :user_educations
  has_many :educations, through: :user_educations
  belongs_to :location, optional: true

  enum status: {current_student: 0, alumni: 1, staff: 2, professional: 3}
end

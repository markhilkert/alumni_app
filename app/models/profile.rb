class Profile < ApplicationRecord
  belongs_to :user
  has_many :skills
  has_many :projects
  has_many :educations
  has_many :jobs
  has_many :locations
  has_many :companies
end

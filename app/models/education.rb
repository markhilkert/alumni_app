class Education < ApplicationRecord
  has_many :user_educations
  has_many :users, through: :user_educations
  belongs_to :location
end

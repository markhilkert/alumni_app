class Skill < ApplicationRecord
  enum competence: {}
  belongs_to :user, through: :profiles
  
end

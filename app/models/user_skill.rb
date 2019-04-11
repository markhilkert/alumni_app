class UserSkill < ApplicationRecord
  has_many :skills
  belongs_to :user
  enum competence: {beginner: 0, intermediate: 1, advanced: 2}
end

class UserSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  enum competence: {beginner: 0, intermediate: 1, advanced: 2}
end

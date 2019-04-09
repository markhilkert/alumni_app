class Skill < ApplicationRecord
  enum competence: {beginner: 0, intermediate: 1, advanced: 2}
  belongs_to :user, through: :profiles
end

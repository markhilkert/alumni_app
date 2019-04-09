class Skill < ApplicationRecord
  enum competence: {beginner: 0, intermediate: 1, advanced: 2}
end

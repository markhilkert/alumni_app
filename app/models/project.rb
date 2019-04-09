class Project < ApplicationRecord
  belongs_to :user, through: :profiles
end

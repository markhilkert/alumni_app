class Company < ApplicationRecord
  belongs_to :user, through: :profiles
  has_many :jobs
  has_many :profiles, through: :jobs
  has_many :users, through: :profiles
end

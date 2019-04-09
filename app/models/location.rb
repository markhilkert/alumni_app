class Location < ApplicationRecord
  has_many :profiles
  has_many :jobs
  has_many :users, through: :profiles
end

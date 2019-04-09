class Location < ApplicationRecord
  has_many :profiles
  has_many :job
  has_many :users, through: :profiles
end

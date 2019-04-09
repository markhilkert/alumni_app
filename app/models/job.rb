class Job < ApplicationRecord
  has_many :users, through: :profiles
  has_one :location
  has_one :company
end

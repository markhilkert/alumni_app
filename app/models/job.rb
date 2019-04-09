class Job < ApplicationRecord
  belongs_to :profile
  has_one :location
  has_one :company
end

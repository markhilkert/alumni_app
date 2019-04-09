class Education < ApplicationRecord
  belongs_to :user, through: :profiles
end

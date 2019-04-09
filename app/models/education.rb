class Education < ApplicationRecord
  belongs_to :profile
  belongs_to :user, through: :profile
end

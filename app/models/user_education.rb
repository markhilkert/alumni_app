class UserEducation < ApplicationRecord
  belongs_to :education
  belongs_to :user
end

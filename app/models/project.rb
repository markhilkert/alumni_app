class Project < ApplicationRecord
  belongs_to :user, through: :profiles
  enum type: {capstone: 0, graduate_initiative: 1, personal: 2, in_class: 3}
end

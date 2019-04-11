class Project < ApplicationRecord
  has_many :user_projects
  has_many :users, through: :user_projects

  enum type: {capstone: 0, graduate_initiative: 1, personal: 2, in_class: 3}
end

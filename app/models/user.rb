class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :educations, through: :profile
  has_many :jobs, through: :profile
  has_many :companies, through: :jobs
  has_many :skills, through: :profile
  has_many :projects, through: :profile
  has_one :location, through: :profile

  enum status: {current_student: 0, alumni: 1, staff: 2, professional: 3}
end

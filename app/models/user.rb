class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :education, through: :profiles
  has_many :jobs, through: :profiles

  enum status: {current_student: 0, alumni: 1, staff: 2, professional: 3}
end

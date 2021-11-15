class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services
  has_many :interventions

  validates :first_name, :last_name, :address, presence: true
  validates :phone_number, presence: true, uniqueness: true
end

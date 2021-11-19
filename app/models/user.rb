class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :services
  # les interventions que t'as bookée en tant que client
  has_many :interventions

  # les interventions ou on t'as booké
  has_many :booked_interventions, through: :services, source: :interventions

  validates :first_name, :last_name, :address, presence: true
  validates :phone_number, presence: true, uniqueness: true

end

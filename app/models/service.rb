class Service < ApplicationRecord
  has_many :interventions
  belongs_to :user

  validates :specialty, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

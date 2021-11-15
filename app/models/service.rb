class Service < ApplicationRecord
  has_many :interventions
  belongs_to :user

  validates :specialty, presence: true
end

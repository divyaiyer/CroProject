class Panel < ApplicationRecord
  has_many :one_hour_electricities

  validates :serial, presence: true, uniqueness: true, length: { is: 15 }
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :brand, presence: true
end

class CarRange < ApplicationRecord
  validates :unit, presence: true
  validates :distance, presence: true

  has_many :cars
end

class Car < ApplicationRecord
  belongs_to :car_range

  scope :by_price, -> { includes(:car_range).order("price Desc") }
  scope :by_make, ->(make) { includes(:car_range).where("make ILIKE ?", make) }
end

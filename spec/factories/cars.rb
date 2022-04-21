FactoryBot.define do
  factory :car do
    make { "Tesla" }
    car_range
    model { "X" }
    colors { ["red", "black"] }
    price { "110000 EUR" }
		photo { "https://car.com/car.jpg" }
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


all_cars_range = JSON.parse(File.read(Rails.root.join("db/seed_data/car_range.json")))
all_cars = JSON.parse(File.read(Rails.root.join("db/seed_data/car.json")))


all_cars_range.each do |range| 
  CarRange.create(range)
end

all_cars.each do |car| 
  Car.create(car)
end
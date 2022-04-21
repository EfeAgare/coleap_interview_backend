require 'rails_helper'

module Queries
  module Car
    RSpec.describe FetchCarByMake, type: :request do

      describe 'resolve' do

        it 'returns all cars by make if it exist' do
          range_1   = create(:car_range)
          range_2   = create(:car_range, 	unit: "km", distance: "420")

          car = create_list(:car, 2, car_range_id: range_1.id )
          car_2 = create(:car, car_range_id: range_2.id )

          post '/graphql', params: { query: query(make: car_2.make) }

          json = JSON.parse(response.body)
          data = json['data']['fetchCarByMake']

          expect(data).to include(
            'id'=> car_2.id,
            "make"=> "Tesla",
            "price"=> "110000 EUR",
            "colors"=> ["red","black"],
            "range"=> {
              "distance"=> range_2.distance,
              "unit"=> range_2.unit
            }
          )
        end

        it "returns an error if the car by make doesn't exist" do
      
          post '/graphql', params: { query: query(make: "Efff") }

          json = JSON.parse(response.body)
          data = json['errors'][0]['code']
          expect(data).to eq 404
        end
      end

      def query(make:)
        <<~GQL
          query {
            fetchCarByMake(make: "#{make}") {
              id
              make
              price
              colors
              range {
                distance
                unit
              }
            }
          }
        GQL
      end
    end
  end
end

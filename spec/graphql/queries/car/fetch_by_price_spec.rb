require 'rails_helper'

module Queries
  module Car
    RSpec.describe FetchByPrice, type: :request do
      describe 'resolve' do
        it 'returns all cars base on price' do
          range_1   = create(:car_range)
          range_2   = create(:car_range, 	unit: "km", distance: "420")

          car = create_list(:car, 2, car_range_id: range_1.id )
          car_2 = create(:car, car_range_id: range_2.id )

          post '/graphql', params: { query: query }

          json = JSON.parse(response.body)
          data = json['data']['fetchByPrice']

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

          expect(data.length).to eq ::Car.count
        end
      end

      def query
        <<~GQL
          query {
            fetchByPrice {
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

# frozen_string_literal: true

module Queries
  class Car::FetchAllCars < Queries::BaseQuery
   
    type [Types::Model::CarType], null: false

    def resolve(**params)
      response = ::Car.includes(:car_range)
      
      response
    end
  end
end

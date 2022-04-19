# frozen_string_literal: true

module Queries
  class Car::FetchByPrice < Queries::BaseQuery
   
    type [Types::Model::CarType], null: false

    def resolve(**params)
      response = ::Car.includes(:car_range).order("price Desc")
      
      response
    end
  end
end

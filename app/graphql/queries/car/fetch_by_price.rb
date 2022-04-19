# frozen_string_literal: true

module Queries
  class Car::FetchByPrice < Queries::BaseQuery
   
    type [Types::Model::CarType], null: false

    def resolve(**params)
      response = ::Car.by_price
      
      response
    end
  end
end

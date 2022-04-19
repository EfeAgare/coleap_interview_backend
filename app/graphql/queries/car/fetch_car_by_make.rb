# frozen_string_literal: true

module Queries
  class Car::FetchCarByMake < Queries::BaseQuery
    argument :make, String, required: true
   
    type [Types::Model::CarType], null: false

    def resolve(**params)
      response = ::Car.by_make(params[:make])
      
      if response.present?
        response
      else
        not_found("Car with make #{params[:make]} not found")
      end
    end
  end
end

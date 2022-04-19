# frozen_string_literal: true

module Queries
  class Car::FetchCarById < Queries::BaseQuery
    argument :id, Int, required: true
   
    type Types::Model::CarType, null: false

    def resolve(**params)
      response = ::Car.includes(:car_range).find(params[:id])
      response
    rescue ActiveRecord::RecordNotFound => e
      not_found("#{e}")
    end
  end
end

# frozen_string_literal: true

module Types
  module Model
    class CarType < ::Types::BaseObject
      field :id, Integer, null: false
      field :make, String, null: false
      field :model, String, null: false
      field :colors, [String], null: false
      field :range, Types::Model::CarRangeType, null: false
      field :price, String, null: false

      def range
        object.car_range
      end
    end
  end
end

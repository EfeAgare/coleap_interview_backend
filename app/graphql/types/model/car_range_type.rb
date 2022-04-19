# frozen_string_literal: true

module Types
  module Model
    class CarRangeType < ::Types::BaseObject
      field :unit, String, null: false
      field :distance, String, null: false
    end
  end
end

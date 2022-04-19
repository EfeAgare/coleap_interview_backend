module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :fetch_all_cars, resolver: Queries::Car::FetchAllCars
    field :fetch_by_price, resolver: Queries::Car::FetchByPrice
    field :fetch_car_by_make, resolver: Queries::Car::FetchCarByMake
  end
end

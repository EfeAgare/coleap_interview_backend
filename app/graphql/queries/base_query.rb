module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    include HandleErrors
  end
end

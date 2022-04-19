# frozen_string_literal: true

module HandleErrors
  def not_found(e = nil)
    raise GraphQL::ExecutionError.new("Not Found", 
        options: { status: :not_found, code: 404, message: e })
  end
end

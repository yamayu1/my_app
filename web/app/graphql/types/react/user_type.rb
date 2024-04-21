# frozen_string_literal: true

module Types
  module React
    class UserType < Types::BaseObject
      implements Interfaces::BaseUserType
      field :posts, [Types::React::PostType], null: false
    end
  end
end

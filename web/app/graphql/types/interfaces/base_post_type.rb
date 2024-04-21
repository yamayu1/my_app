# frozen_string_literal: true

module Types
    module Interfaces
      module BasePostType
        include Types::BaseInterface
        field :id, ID, null: false
        field :name, String
        field :description, String
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
      end
    end
  end

module Types
  class MutationType < Types::BaseObject
    field :update_user_mutation, mutation: Mutations::UpdateUserMutation
    field :create_user_mutation, mutation: Mutations::CreateUserMutation
  end
end

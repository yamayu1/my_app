module Mutations
  class UpdateUserMutation < BaseMutation
    field :user, Types::React::UserType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :age, Integer, required: true
    argument :memo, String, required: true

    def resolve(id:, **args)
      return {user: User.update(id, args)}
    end
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
  end
end

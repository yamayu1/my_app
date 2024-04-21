module Mutations
  class CreateUserMutation < BaseMutation
    argument :name, String
    argument :age, Integer
    argument :memo, String

    field :user, Types::React::UserType

    def resolve(name:, age:, memo:)
      begin
        user = User.create({name:, age:, memo:})
        return { user: }
      rescue => exception
        raise GraphQL::ExecutionError, "user create failed"
      end
    end

    # def resolve(**args)
    #   user = User.create!(args)
    #   {
    #     user: user
    #   }
    # end


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

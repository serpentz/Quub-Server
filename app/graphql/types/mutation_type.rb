module Types
  class MutationType < Types::BaseObject
    field :addGroup, mutation: Mutations::AddGroup

    field :createUser, mutation: Mutations::CreateUser
  
  end
end

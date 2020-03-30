module Mutations
    class CreateUser < BaseMutation
       
      argument :username, String, required: true
  
      type Types::CreateUserPayloadType
  
      def resolve(**args)
       {success: "true"}
      end
    end
  end
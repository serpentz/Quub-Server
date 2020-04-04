module Types
    class CreateUserPayloadType < BaseObject

      field :errors, String, null: true
      field :token, String, null: true
  
    end
  end
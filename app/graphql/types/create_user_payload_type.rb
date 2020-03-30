module Types
    class CreateUserPayloadType < BaseObject
      graphql_name 'CreateUserPayloadType'
  
      field :success, String, null: false
      field :errors, String, null: true
      field :token, String, null: true
  
    end
  end
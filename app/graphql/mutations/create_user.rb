module Mutations
    class CreateUser < BaseMutation

      type Types::CreateUserPayloadType
       
      argument :username, String, required: true
      argument :email, String, required: true
      argument :password, String, required: true
      argument :firstName, String, required: true

      def resolve(username: nil, password: nil, email: nil, firstName: nil )
       errors = token = ""

       begin
            @usr = User.create!({
                username: username,
                firstName: firstName,
                password: password,
                email: email
            })

            token = Adapter::Auth.new.encode_token("user_id: #{@usr.id}")
        rescue ActiveRecord::RecordInvalid => e
            errors = "#{e.record.errors.full_messages.join(', ')}"
        end

        puts token
        
        OpenStruct.new({token: token ,errors: errors })
      end
    end
  end
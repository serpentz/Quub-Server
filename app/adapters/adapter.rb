module Adapter
    class Auth
  
    def secret
        Rails.application.credentials.secret_key_base.byteslice(0..31)
    end

    def algorithm
        ActiveSupport::MessageEncryptor.new(secret, cypher: 'aes-256-cbc')
    end

    def encode_token(payload)
    # should store secret in env variable
        token = algorithm.encrypt_and_sign(payload)
        token
    end

    def decoded_token(token)
        usr = nil
        begin
            token = algorithm.decrypt_and_verify token
            usr = User.find(token.split()[1].to_i)
        rescue Exception => e

        end
        usr
    end

    def current_user(token=nil)

        user = nil
        if token 
            user = decoded_token(token.split()[1])
        end
        user
    end
  end
  end
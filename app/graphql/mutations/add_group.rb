module Mutations
  class AddGroup < BaseMutation

    class AddGroupPayload < Types::BaseObject

      field :errors, String, null: false     
    end

    type AddGroupPayload
     
    argument :name, String, required: true
    argument :people, [Integer], required: true


    def resolve(**args)
      errors = token = ""
      group = args
 
     begin
      
      current_user = context[:current_user]
     
        if current_user
          grp = Group.create!({
              name: group[:name],
              count: group[:people].length
          })
          group[:people].each do |id|
            usr = User.find(id) 
            UserGroup.create(user: usr, group: grp)
          end
          GroupAdmin.create group: grp, admin: current_user
        else
          errors = "Must Be logged in"
        end
      rescue ActiveRecord::RecordInvalid => e
          errors = "#{e.record.errors.full_messages.join(', ')}"
      end
    
      token = "#{grp.id}" if errors == ""
      
      OpenStruct.new({token: token ,errors: errors })
    end
  end
end
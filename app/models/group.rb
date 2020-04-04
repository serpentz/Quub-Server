class Group < ApplicationRecord

    # has_many :group_admins
    # has_many :admins, source: "User", through: :group_admins, foreign_key: 'user_id'

    has_many :group_admins
    has_many :admins, :through => :group_admins
    
    has_many :user_groups
    has_many :users, through: :user_groups
    validates :name, uniqueness: true
end

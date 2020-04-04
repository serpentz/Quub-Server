class User < ApplicationRecord
    has_many :user_groups
    has_many :groups, through: :user_groups
    validates :first_name, presence: true, length: { minimum: 2 }
    validates :email, uniqueness: true, length: { minimum: 3 }
    validates :username, uniqueness: true, length: { minimum: 5 }
end

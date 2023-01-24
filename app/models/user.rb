class User < ApplicationRecord
    has_many :libraries 
    has_secure_password 
    validates :email, :uniqueness => true, :presence => true
end

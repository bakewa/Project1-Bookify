class User < ApplicationRecord
    has_many :libraries 
    has_many :books, through: :libraries
    has_secure_password 
    validates :email, :uniqueness => true, :presence => true
end

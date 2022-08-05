class User < ApplicationRecord
    

    validates :username, :email, :password, presence: true 
    validates :username, :password, length: { minimum: 4, maximum: 20 }
    validates :username, :email, uniqueness: true  
    validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Must be a valid email address'}
end

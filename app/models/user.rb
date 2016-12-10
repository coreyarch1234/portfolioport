class User < ApplicationRecord
    has_secure_password
    has_many :projects
    validates :name, :email, :city, :about, :password, :password_confirmation, presence: true
end

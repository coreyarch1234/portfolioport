class User < ApplicationRecord
    has_many :projects
    validates :name, :email, :city, :about, presence: true
end

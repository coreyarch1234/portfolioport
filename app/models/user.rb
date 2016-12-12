class User < ApplicationRecord
    has_secure_password
    has_many :projects
    validates :name, presence: true, length: {maximum: 25}
    validates :city, presence: true
    validates :about, presence: true, length: {maximum: 250}
    validates :password, presence: true, length: {minimum: 8}
    validates :password_confirmation, presence: true, length: {minimum: 6}
    VALID_EMAIL_REGEX = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :email, presence: true, length: { maximum: 25 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end

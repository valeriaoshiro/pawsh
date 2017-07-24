class User < ApplicationRecord
    has_many :locations, dependent: :destroy
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, length: { minimum: 8 }
end

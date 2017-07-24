class User < ApplicationRecord
    # after_initialize :set_defaults

    has_many :locations, dependent: :destroy
    has_many :images, as: :imagetable
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, length: { minimum: 8 }, if: :password_changed?

private

    def password_changed?
        self.password && self.changed?
    end
    
    # def set_defaults
    #     self.images = "DogProfile.png" if self.images.nil?
    # end
    

end

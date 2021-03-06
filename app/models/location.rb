class Location < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    has_many :images, as: :imagetable

    validates :name, presence: true
    validates :address, presence: true
    
end

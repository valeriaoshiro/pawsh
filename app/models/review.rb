class Review < ApplicationRecord
  belongs_to :location
  has_many :images, as: :imagetable
end

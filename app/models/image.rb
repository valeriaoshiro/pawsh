class Image < ApplicationRecord
  belongs_to :imagetable, polymorphic: true
  has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true, default_url: "/assets/DogProfile.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

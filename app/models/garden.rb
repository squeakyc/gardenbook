class Garden < ApplicationRecord

  belongs_to :user
  has_many :plantings
  has_many :plants, :through => :plantings

  mount_uploader :image, ImageUploader

end

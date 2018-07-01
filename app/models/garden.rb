class Garden < ApplicationRecord

  belongs_to :user
  has_many :plants

  mount_uploader :image, ImageUploader

end
 

class Plant < ApplicationRecord
  #relations
  belongs_to :user
  belongs_to :garden, optional: true
  belongs_to :collection, optional: true
  validate :valid_name?

  mount_uploader :image, ImageUploader

  private

  def valid_name?
    latin_name.present? || common_name.present?

  end

end
 

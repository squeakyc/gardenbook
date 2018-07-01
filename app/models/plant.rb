class Plant < ApplicationRecord
  #relations
  belongs_to :user
  has_many :plantings
  has_many :gardens, :through => :plantings
  belongs_to :collection, optional: true

  validate :valid_name?

  mount_uploader :image, ImageUploader

  private

  def valid_name?
    latin_name.present? || common_name.present?

  end

end

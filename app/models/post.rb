class Post < ApplicationRecord
  belongs_to :user

  validates :message, presence: true
  validates :message, length: {maximum: 300, too_long: "Bio must be under 300 characters."}
end

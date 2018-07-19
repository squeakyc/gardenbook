class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gardens
  has_many :collections
  has_many :plants
  has_many :posts

  mount_uploader :avatar, AvatarUploader

  # since :following is a text attribute, use serialize to make it act like an array in order to push user id's into it
  serialize :following, Array

  validates :username, presence: true

end

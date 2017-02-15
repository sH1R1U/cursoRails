#  Modelo para el usuario
class User < ApplicationRecord::Base
  acts_as_token_authenticatable

  has_many :commentary
  has_many :favorite_book
  has_many :for_reading
  has_one :user
  has_many :user

  devise :invitable, :database_authenticable, :recoverable, :rememberable, :trackable, :validatable, :lockable
end

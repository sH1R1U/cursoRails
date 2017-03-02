#  Modelo para el usuario
class User < ApplicationRecord::Base
  acts_as_token_authenticatable

  has_many :commentaries
  has_many :favorite_books
  has_many :for_readings
  has_one :user
  has_many :users

  devise :invitable, :database_authenticable, :recoverable, :rememberable, :trackable, :validatable, :lockable
end

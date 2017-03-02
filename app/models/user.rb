#  Modelo para el usuario
class User < ApplicationRecord::Base
  has_many :commentaries
  has_many :favorite_books
  has_many :for_readings
  has_one :user
  has_many :users
end

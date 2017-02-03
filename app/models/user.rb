#  Modelo para el usuario
class User < ApplicationRecord::Base
  has_many :commentary
  has_many :favorite_book
  has_many :for_reading
  has_one :user
  has_many :user
end

#  Modelo para el libro
class Book < ApplicationRecord::Base
  has_many :commentaries
  has_many :favorite_books
  has_many :for_readings
end

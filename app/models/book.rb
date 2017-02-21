#  Modelo para el libro
class Book < ApplicationRecord::Base
  has_many :comentaries
  has_many :fovorite_books
  has_many :for_readings
end

#  Modelo para el libro
class Book < ApplicationRecord::Base
  has_many :comentary
  has_many :fovorite_book
  has_many :for_reading
end

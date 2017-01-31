#  Este es el modelo para los libros
class Book < ApplicationRecord::Base
  has_many :commentary
  has_many :favorite_book
  has_many :for_reading
end

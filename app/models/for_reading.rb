#  Este es el modelo para los libros a leer por el usuario
class ForReading < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

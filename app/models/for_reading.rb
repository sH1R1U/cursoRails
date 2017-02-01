#  Modelo para los libros a leer del usuario
class ForReading < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

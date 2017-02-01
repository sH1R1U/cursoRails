#  Modelo para los libros a leer del usuario
class ForReading < ApplicationRecord::Base
  belongs_to :usuario
  belongs_to :libro
end

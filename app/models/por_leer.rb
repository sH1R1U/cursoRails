#  Este es el modelo para los libros a leer por el usuario
class PorLeer < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

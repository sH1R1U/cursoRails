#  Este es el modelo para los libros
class Libro < ApplicationRecord
  has_many :comentario
  has_many :libro_favorito
  has_many :por_leer
end

#  Modelo para el libro
class Book < ApplicationRecord
  has_many :comentario
  has_many :libro_favorito
  has_many :por_leer
end

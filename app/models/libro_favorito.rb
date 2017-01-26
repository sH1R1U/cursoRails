#  Este es el modelo para los libros favoritos del usuario
class LibroFavorito < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

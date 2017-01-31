#  Este es el modelo para los libros favoritos del usuario
class FavoriteBook < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

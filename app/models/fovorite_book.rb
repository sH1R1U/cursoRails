#  Modelo para los libros favoritos del usuario
class FovoriteBook < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

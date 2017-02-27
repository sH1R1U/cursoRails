#  Modelo para los libros favoritos del usuario
class FovoriteBook < ApplicationRecord::Base
  belongs_to :usuario
  belongs_to :libro
end

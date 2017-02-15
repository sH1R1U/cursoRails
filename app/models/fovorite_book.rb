#  Modelo para los libros favoritos del usuario
class FovoriteBook < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

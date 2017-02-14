#  Modelo para los libros a leer del usuario
class ForReading < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

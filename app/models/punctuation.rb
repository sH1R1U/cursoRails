#  Este es el modelo para las puntuaciones de los libros
class Punctuation < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

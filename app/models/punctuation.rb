#  Modelo para la puntuacion del libro realizada por el usuario
class Punctuation < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

#  Modelo para la puntuacion del libro realizada por el usuario
class Punctuation < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

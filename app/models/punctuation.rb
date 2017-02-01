#  Modelo para la puntuacion del libro realizada por el usuario
class Punctuation < ApplicationRecord::Base
  belongs_to :usuario
  belongs_to :libro
end

#  Modelo para la puntuacion del libro realizada por el usuario
class Punctuation < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

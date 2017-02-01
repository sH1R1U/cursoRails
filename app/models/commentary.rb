#  Modelo para los comentarios
class Commentary < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

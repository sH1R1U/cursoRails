#  Este es el modelo para los comentarios
class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end

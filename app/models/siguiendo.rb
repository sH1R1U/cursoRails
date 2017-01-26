#  Este es el modelo para los follow de los usuarios
class Siguiendo < ApplicationRecord
  belongs_to :usuario
  belongs_to :usuario
end

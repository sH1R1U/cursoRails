#  Modelo para los comentarios
class Commentary < ApplicationRecord::Base
  belongs_to :usuario
  belongs_to :libro
end

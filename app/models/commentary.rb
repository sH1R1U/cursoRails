#  Este es el modelo para los comentarios
class Commentary < ApplicationRecord::Base
  belongs_to :user
  belongs_to :book
end

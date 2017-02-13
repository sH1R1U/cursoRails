#  Modelo para los comentarios
class Commentary < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
end

#  Modelo para el usuario
class User < ActiveRecord::Base
  acts_as_token_authenticatable

  has_many :comentario
  has_many :libro_favorito
  has_many :por_leer
  has_many :usuario
  has_many :usuario

end

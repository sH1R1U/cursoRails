#  Modelo para el usuario
class User < ApplicationRecord::Base
  acts_as_token_authenticatable

  has_many :comentario
  has_many :libro_favorito
  has_many :por_leer
  has_many :usuario
  has_many :usuario

  devise :invitable, :database_authenticable, :recoverable, :rememberable, :trackable, :validatable, :lockable
end

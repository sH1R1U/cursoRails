class Usuario < ApplicationRecord
	has_many :comentario
	has_many :libro_favorito
	has_many :por_leer
	has_many :usuario
	has_many :usuario
end

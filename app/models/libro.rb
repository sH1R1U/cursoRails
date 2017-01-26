class Libro < ApplicationRecord
	has_many :comentario
	has_many :libro_favorito
	has_many :por_leer
end

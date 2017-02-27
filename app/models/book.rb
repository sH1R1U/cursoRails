#  Modelo para el libro
class Book < ActiveRecord::Base

  scope :author, -> (author) { where author: author }
  scope :year, -> (year) { where year: year }
  scope :gender, -> (gender) { where gender: gender }
  scope :punctuation, -> (punctuation) { where punctuation: punctuation }
  scope :title, -> (title) { where title: title }

  has_many :comentario
  has_many :libro_favorito
  has_many :por_leer
end

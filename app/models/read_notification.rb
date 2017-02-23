#  Modelo para verificar si leyo o no la notificacion del usuario
class ReadNotification < ApplicationRecord
  belongs_to :users
  has_many :notifications
end

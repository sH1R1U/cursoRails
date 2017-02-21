#  Modelo para verificar si leyo o no la notificacion del usuario
class ReadNotification < ApplicationRecord
  has_many :users
  has_many :notifications
end

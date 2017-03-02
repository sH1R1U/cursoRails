#  Modelo para verificar si leyo o no la notificacion del usuario
class ReadNotification < ApplicationRecord
  belongs_to :user
  belongs_to :notification
end

#  Modelo para las notificaciones del sistema
class Notification < ApplicationRecord::Base
  belongs_to :user
end

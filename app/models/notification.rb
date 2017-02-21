#  Modelo para las notificaciones del sistema
class Notification < ApplicationRecord
  belongs_to :follower, class_name: 'user'
  belongs_to :following, class_name: 'user'
end

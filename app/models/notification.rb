#  Este es el modelo para las notificaciones de los usuarios
class Notification < ApplicationRecord::Base
  belongs_to :follower, class_name: 'user'
  belongs_to :following, class_name: 'user'
end

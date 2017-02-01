#  Modelo para las notificaciones del sistema
class Notification < ApplicationRecord::Base
  belongs_to :follower, class_name: 'user'
  belongs_to :followingm class_name: 'user'
end

#  Este es el modelo para los usuarios
class User < ApplicationRecord::Base
  has_many :commentary
  has_many :fovorite_book
  has_many :for_reading
  has_one :follower, class_name: 'Notification', foreign_key: 'follower'
  has_many :following, class_name: 'Notification', foreign_key: 'following'
end

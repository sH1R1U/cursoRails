class Notification < ApplicationRecord
  belongs_to :follower, class_name: 'user'
  belongs_to :followingm class_name: 'user'
end

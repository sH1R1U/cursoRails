class ReadNotification < ApplicationRecord
	has_many :user
	has_many :notification
end

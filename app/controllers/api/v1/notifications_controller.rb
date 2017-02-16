class Api::V1::NotificationsController < ApplicationController

  def create
    @notification = Notification.new(notification_params) 

    if @notification.save
      render json: @notification, status: :created, location: @notification

      @forReading = ForReading.new(forReading_params)
      @forReading.save
    else
      render json: @notification.errors, status: :unprocessable_entity      
    end
  end

end

class Api::V1::FollowsController < ApplicationController

  def create
    @follow = Follow.new(follow_params) 

    if @follow.save
      render json: @follow, status: :created, location: @follow
      #  Se crea la notificacion 
      @notification = Notification.new(notification_params)
      notification.save

      #  Se envia el correo
      sendEmail
    else
      render json: @follow.errors, status: :unprocessable_entity      
    end
  end

  def sendEmail
  	ActionCorreoMailer.follow_up_notification(@user).deliver
  	render.json: @user

  end

end

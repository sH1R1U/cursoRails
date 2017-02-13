#  Controlador para los users
class Api::V1::UsersController < ApplicationController

  #  Get /users/1
  def show
  	render json: @users
  end

  #  PATCH/PUT /users/1.json
  def update
  	if @users.update(user_params)
  		render json: @users
  	else
  		render json: @users.errors, status: :unprocessable_entity
    end
  end

end

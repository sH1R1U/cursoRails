#  Controlador para los users
class Api::V1::UsersController < ApplicationController

  #  PATCH/PUT /users/1.json
  def update
  	if @users.update(user_params)
  		respond_with({'status':'succes'})
  	else
  		respond_with({'status':error})
  end
end

class Api::V1::FollowsController < ApplicationController

  def create
    @follow = Follow.new(follow_params) 

    if @follow.save
      render json: @follow, status: :created, location: @follow
    else
      render json: @follow.errors, status: :unprocessable_entity      
    end
  end

end

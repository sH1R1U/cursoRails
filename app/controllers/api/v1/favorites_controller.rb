class Api::V1::FavoritesController < ApplicationController
  
  def create
    @punctuation = Punctuation.new(punctuation_params) 

    if @punctuation.save
      render json: @punctuation, status: :created, location: @punctuation
    else
      render json: @punctuation.errors, status: :unprocessable_entity      
    end
  end

end

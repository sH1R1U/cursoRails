class Api::V1::ForReadingsController < ApplicationController
  
  def create
    @forReading = ForReading.new(forReading_params) 

    if @forReading.save
      render json: @forReading, status: :created, location: @forReading
    else
      render json: @forReading.errors, status: :unprocessable_entity      
    end
  end

end

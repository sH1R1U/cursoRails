class Api::V1::CommentariesController < ApplicationController

	#Get /commentaries
  def index
    @commentaries = Commentary.all
    
    render json: @commentaries
  end

  def show
    render json: @commentary
  end

  def create
    @commentary = Commentary.new(commentary) 

    if @commentary.save
      render json: @commentary, status: :created, location: @commentary
    else
      render json: @commentary.errors, status: :unprocessable_entity      
    end
  end

  def update
    if @commentary.update(commentary_params)
      render json: @commentary
    else
      render json: @commentary, status: :unprocessable_entity      
    end
  end

  def destroy
   @commentary.destroy 
  end

end

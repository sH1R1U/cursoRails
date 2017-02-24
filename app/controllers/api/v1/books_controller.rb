class Api::V1::BooksController < ApplicationController

  #Get /books
  def index    
    render json: Book.all
  end

end

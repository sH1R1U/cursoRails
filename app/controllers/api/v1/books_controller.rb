class Api::V1::BooksController < ApplicationController

  #Get /books
  def index
    @books = Book.all
    
    render json: @books
  end

end

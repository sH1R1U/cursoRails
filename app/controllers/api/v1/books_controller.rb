class Api::V1::BooksController < ApplicationController

  #Get /books
  def index
    @books = Book.all
    
    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params) 

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity      
    end
  end

  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book, status: :unprocessable_entity      
    end
  end

  def destroy
   @book.destroy 
  end

end

class Api::V1::BooksController < ApplicationController

  #Get /books
  def index    
    render json: Book.all.paginate(:page => params[:page], :per_page => 5)
  end

end

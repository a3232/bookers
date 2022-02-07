class BooksController < ApplicationController
  
  protect_from_forgery
  
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to "/books/#{@book.id}" and return 
    redirect_to "/book(book.id)"
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/book"
  end
  
  def edit
    @book = book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to "/book"
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end


  
end

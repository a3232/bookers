class BooksController < ApplicationController
  
  protect_from_forgery
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to "/books/#{@book.id}" and return 
      redirect_to "/book(book.id)"
    else
      @books = Book.all
      render :index
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/book"
  end
  
  def edit
    @book = Book.find(params[:id])
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

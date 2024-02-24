class BooksController < ApplicationController
  def new
  end
  
  def create
    @book = book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  def show
    @book = Book.find(params[:id])
  end
  
   # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end

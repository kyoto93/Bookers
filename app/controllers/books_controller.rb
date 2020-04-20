class BooksController < ApplicationController

  def index
    @book = Book.new
  	@books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @books = Book.all
  	# ストロングパラメーターを使用
  	@book = Book.new(book_params)

  	# DBへ保存する
  	if @book.save
       flash[:notice] = "Book was successfully created."
  	# 詳細画面へリダイレクト
  	  redirect_to book_path(@book.id)

    else
      render action: :index
    end
  end

  def edit
  	  @book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)

    else
      render action: :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
 end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end


end

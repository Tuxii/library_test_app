class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.update(borrower: current_user)
    redirect_to books_path, notice: "Book was successfully borrowed."
  end

  def destroy
    @book = Book.find(params[:book_id])
    @borrowing = @book.update(borrower: nil)
    redirect_to my_books_path, notice: "Book was returned."
  end
end

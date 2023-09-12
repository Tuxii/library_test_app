module Users
  class BooksController < ApplicationController
    # GET /books or /books.json
    def index
      @books = Book.where(borrower: current_user)
      render "books/index"
    end
  end
end

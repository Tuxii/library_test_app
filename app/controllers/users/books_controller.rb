module Users
  class BooksController < ApplicationController
    before_action :authenticate_user!

    # GET /books or /books.json
    def index
      @books = Book.where(borrower: current_user)
      render "books/index"
    end
  end
end

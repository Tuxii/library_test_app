json.extract! book, :id, :title, :author_id, :isbn, :description, :cover_url, :pages_count, :created_at, :updated_at
json.url book_url(book, format: :json)

class BookDataFetcher
  class BookNotFound < StandardError; end

  def self.fetch(title)
    client = OpenLibraryClient.new
    response = client.search(title)

    if response["numFound"] > 0
      data = response["docs"].first
      {
        title: data["title"],
        author: data["author_name"].first,
        isbn: data["isbn"].first,
        cover_url: client.cover_url(data["cover_i"]),
        pages_count: data["number_of_pages_median"]
      }
    else
      raise BookNotFound, "No book found for title #{title}"
    end
  end
end

class OpenLibraryClient
  API_URL = "https://openlibrary.org"

  def initialize
    @connection = Faraday.new(url: API_URL) do |conn|
      conn.response :json
    end
  end

  def search(title)
    @connection.get("/search.json", title: title, limit: 1).body
  end

  def cover_url(cover_id)
    url = "https://covers.openlibrary.org/b/id/#{cover_id}-L.jpg"
    response = Faraday.get(url)
    return nil if response.status != 200
    url
  end
end

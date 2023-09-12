RSpec.describe "Books", type: :request do
  describe "GET /books" do
    it "renders a successful response" do
      Book.create! title: "Harry Potter", isbn: "123"
      get books_url
      expect(response).to be_successful
      expect(response).to render_template(:index)
    end
  end
end

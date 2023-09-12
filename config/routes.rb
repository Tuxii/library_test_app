Rails.application.routes.draw do
  resources :books do
    collection do
      post "/auto_fill", to: "books#auto_fill"
    end
    resource :borrowings, only: [:create, :destroy]
  end
  devise_for :users
  root "books#index"

  get "/my_books", to: "users/books#index"
end

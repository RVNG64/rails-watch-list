Rails.application.routes.draw do
  get 'reviews/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end

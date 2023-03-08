Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sport_events do
    resources :requests, only: [:create]
    resources :reviews, only: [:create]
    member do
      get "chat"
    end
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "profile/:user_id", to: "pages#profile", as: :profile # missing ID
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sport_events do
    resources :requests, only: [:index, :new, :create]
    resources :reviews, only: [:create]
    resources :messages, only: [:create]
    member do
      get "chat"
    end
  end
  patch "requests/:id", to: "requests#accept", as: :accept_request
  # patch "requests/:id", to: "requests#cancel", as: :cancel_request
  resources :requests, only: [:destroy]
end

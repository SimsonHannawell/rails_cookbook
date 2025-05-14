Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Health check (optional, safe to leave)
  resources :categories, only: [:index, :show, :new, :create]


  # Define routes for categories with nested bookmarks
  resources :categories do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]


end

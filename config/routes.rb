Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Home page route
  root "clubs#index"

  # About page route
  get '/about', to: "about#index"

  resources :about

  # User authentication
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }

  # Clubs and Ratings
  resources :clubs do
    resources :ratings
  end

  resources :ratings

  # My Ratings
  get "/my_ratings", to: "clubs#my_ratings"

  resources :my_ratings

  # Categories
  resources :categories

  # We are not using the below anymore
  # Assignments route
  get "/assignments", to: "assignments#index"

  resources :assignments

  # Add A3 work below
  get "/assignments/a3Lawrence", to: "assignments#a3Lawrence"
  get "/assignments/a3ThanhQuan", to: "assignments#a3ThanhQuan"
  get "/assignments/a3Minkyu", to: "assignments#a3Minkyu"
  get "/assignments/a3Max", to: "assignments#a3Max"
  get "/assignments/a3Cynthia", to: "assignments#a3Cynthia"

  # Add A4 work below
  get "/assignments/a4Lawrence", to: "assignments#a4Lawrence"
  get "/assignments/a4ThanhQuan", to: "assignments#a4ThanhQuan"
  get "/assignments/a4Max", to: "assignments#a4Max"
  get "/assignments/a4Minkyu", to: "assignments#a4Minkyu"
  get "/assignments/a4Cynthia", to: "assignments#a4Cynthia"

  namespace :assignments do
    namespace :a4_thanh_quan do
      resources :tests
    end
  end

end

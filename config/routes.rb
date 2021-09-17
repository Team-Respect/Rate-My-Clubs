Rails.application.routes.draw do
  resources :rate_my_clubs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "assignments#index"

  get "/assignments", to: "assignments#index"

  # Add A3 work below

  get "/assignments/a3Lawrence", to: "assignments#a3Lawrence"
  
  get "/assignments/a3ThanhQuan", to: "assignments#a3ThanhQuan"

  get "/assignments/a3Minkyu", to: "assignments#a3Minkyu"

  get "/assignments/a3Max", to: "assignments#a3Max"

  # Add A4 work below

  get "/assignments/a4Lawrence", to: "assignments#a4Lawrence"

  get "/assignments/a4ThanhQuan", to: "assignments#a4ThanhQuan"
end

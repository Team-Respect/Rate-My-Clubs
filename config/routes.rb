Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "assignments#index"

  get "/assignments", to: "assignments#index"

  # Add A3 work below

  get "/assignments/a3Lawrence", to: "assignments#a3Lawrence"

  # Add A4 work below

  get "/assignments/a4Lawrence", to: "assignments#a4Lawrence"
end

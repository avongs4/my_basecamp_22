Rails.application.routes.draw do
  root "sessions#new"

  resources :users, only: [:new, :create, :show, :destroy]

  get    "sign_in",  to: "sessions#new"
  post   "sign_in",  to: "sessions#create"
  delete "sign_out", to: "sessions#destroy"
end

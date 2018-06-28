Rails.application.routes.draw do
  resources :histories

  root "histories#index"
  get 'users/sign_up', to: "users#new"
  get 'users/sign_in', to: 'sessions#new'
  post 'users', to: "users#create"
  resources :sessions, only: [:create, :destroy]
end

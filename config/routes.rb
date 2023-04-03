Rails.application.routes.draw do
  root 'home#index'

  resources :posts
  resources :comments, only: [:create, :destroy]

  devise_for :users

  post "toggle_like", to: "likes#toggle_like", as: :toggle_like
end

Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  
  resources :users, only: [:show]
  resources :posts
  resources :comments, only: [:create, :destroy]

  post "toggle_like", to: "likes#toggle_like", as: :toggle_like

  post "follow", to: 'follows#follow', as: :follow
  delete 'unfollow', to: 'follows#unfollow', as: :unfollow
  delete 'cancel_request', to: 'follows#cancel_request', as: :cancel_request
  post 'accept_follow', to: 'follows#accept_follow', as: :accept_follow
  delete 'decline_follow', to: 'follows#decline_follow', as: :decline_follow
end

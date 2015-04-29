Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'new_post', to: 'posts#new'
  post 'new_post', to: 'posts#create', as: :posts
  post 'new_comment', to: 'comments#create', as: :comments
end

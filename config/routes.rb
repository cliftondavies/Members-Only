Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]
  devise_for :users
  root 'posts#index'
end

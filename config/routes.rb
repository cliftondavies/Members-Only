Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'posts#index'
end

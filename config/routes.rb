Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: :index
  resources :users, only: :show
  resources :posts do
    resources :comments, only: :create
  end
end

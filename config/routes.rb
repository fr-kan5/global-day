Rails.application.routes.draw do
  devise_for :users , controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: 'homes#index'
  resources :homes, only: :index
  resources :users, only: :show
  resources :posts do
    resources :comments, only: :create
  end
end

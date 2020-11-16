Rails.application.routes.draw do
  devise_for :users , controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
  root :to => 'devise/sessions#new'
  end
  resources :homes, only: :index
  resources :users, only: :show do
    resources :memos, only:[:index, :create]
  end
  resources :posts do
    resources :comments, only: :create
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end
end

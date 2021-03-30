Rails.application.routes.draw do
  resources :comments
  resources :tasks
  resources :projects

  devise_for :users

  root to: 'home#index'
end

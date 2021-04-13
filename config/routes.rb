Rails.application.routes.draw do
  resources :comments
  
  resources :projects do
    resources :tasks
  end

  devise_for :users

  root to: 'home#index'
end

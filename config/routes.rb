Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :staffs, only: [:index]
  resources :users, only: [:index, :edit, :update]
  resources :chanpagnes, only: [:index]
end

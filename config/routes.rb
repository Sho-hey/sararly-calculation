Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: [:index, :edit, :update]
  resources :staffs, only: [:index]
  resources :calculations, only: [:index]
  resources :chanpagnes, only: [:index]
end

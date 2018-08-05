Rails.application.routes.draw do
  devise_for :users
  root 'staffs#index'
  resources :staffs, only: [:index]
  resources :users, only: [:edit, :update]
end

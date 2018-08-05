Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: [:index, :edit, :update] do
    resources :staffs, only: [:index, :new, :crete]
  end
  resources :calculations, only: [:index]
  resources :chanpagnes, only: [:index]
end

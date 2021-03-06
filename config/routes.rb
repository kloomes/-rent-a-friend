Rails.application.routes.draw do
  devise_for :users
  root to: 'friends#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friends, only: [:index, :show] do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :users, only: [:show, :edit, :update]
  resources :bookings, only: [:show, :destroy]
end

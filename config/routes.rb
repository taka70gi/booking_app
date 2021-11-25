Rails.application.routes.draw do
  get 'posts/index'
  get 'reservations/index'
  devise_for :users
  #devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/index'
  get 'rooms/index'
  root 'users#index'
  get 'rooms/search' => 'rooms#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :users
  resources :reservations
  resources :homes
end

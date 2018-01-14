Rails.application.routes.draw do
  resources :abouts
  resources :bookings
  resources :dishes
  resources :main_ingredients
  resources :cuisines
  resources :categories
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "home#index"
  resources :products do
    resources :reviews
  end
  resources :order_items
  resource :cart, only: [:show]
  resource :account, only: [:show]
  resources :charges
end

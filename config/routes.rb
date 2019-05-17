Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings
  resources :hostels
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # adding routes for the b2b dashboard below:

  # get 'show_partner_dashboard/:id', to: 'pages#show_partner_dashboard'
  # get 'edit_payment_method/:id/edit', to: 'pages#edit_payment_method'
  # patch 'update_payment_method/:id', to: 'pages#update_payment_method'
  # get 'show_partner_invoices/:id', to: 'pages#show_partner_invoices'
end

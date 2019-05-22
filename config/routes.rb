Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  root to: 'pages#home'

  resources :hostels do
    resources :bookings
  end
  resources :users, only: [:show]
  get 'my_bookings', to: "users#my_bookings", as: :my_bookings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # adding routes for the b2b dashboard below:

  get 'show_partner_dashboard', to: 'pages#show_partner_dashboard'
  # get 'edit_payment_method/:id/edit', to: 'pages#edit_payment_method'
  # patch 'update_payment_method/:id', to: 'pages#update_payment_method'
  # get 'show_partner_invoices/:id', to: 'pages#show_partner_invoices'
end

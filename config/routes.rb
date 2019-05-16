Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  get '/bookings/new', to: 'bookings#new'
  post '/bookings', to: 'bookings#create'
  get '/bookings/:id', to: 'bookings#show'
  patch '/bookings/:id', to: 'bookings#update'
  get '/bookings/:id/edit', to: 'bookings#edit'
  delete '/bookings/:id', to: 'bookings#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

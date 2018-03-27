Rails.application.routes.draw do
  resources :products
  resources :seller_profiles
  resources :enquiries
  # <Niyati - added , controllers: { registrations: "registrations" } below from devise github
  devise_for :users, controllers: { registrations: "registrations" }
  root 'pages#home'

  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'privacy', to: 'pages#privacy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

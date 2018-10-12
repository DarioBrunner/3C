Rails.application.routes.draw do
  resources :impressums
  resources :admins
  resources :faqs
  resources :dataprotections
  resources :channels
  devise_for :users
  resources :users
  resources :companies
  resources :groups
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

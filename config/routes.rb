Rails.application.routes.draw do
  resources :group_comments
  resources :group_messages
  resources :copyrigths
  resources :chats
  resources :blogs
  resources :impressums
  resources :admins
  resources :faqs
  resources :dataprotections
  resources :channels
  devise_for :users
  resources :users
  resources :companies
  resources :groups
  root to: "chats#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

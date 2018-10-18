Rails.application.routes.draw do
  resources :user_to_companies
  get 'user_to_company/user_id:references' => 'user_to_company#user_id:references'
  get 'user_to_company/company_id:references' => 'user_to_company#company_id:references'
  get 'user_to_company/admin:boolean' => 'user_to_company#admin:boolean'
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

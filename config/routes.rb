Rails.application.routes.draw do

  match '/signup', to: 'users#new', via: 'get'
  match '/login', to: 'sessions#new', via: 'get'
  match '/login', to: 'sessions#create', via: 'post'
  match '/logout', to: 'sessions#destroy', via: 'delete'
  resources :users
  match '/help', to: 'static_pages#help', via: 'get'
  root 'static_pages#home'
end

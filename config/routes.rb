Rails.application.routes.draw do

  resources :users
  match '/help', to: 'static_pages#help', via: 'get'
  root 'static_pages#home'
end

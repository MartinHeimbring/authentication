Rails.application.routes.draw do
  get 'users/new'

  match '/help', to: 'static_pages#help', via: 'get'
  root 'static_pages#home'
end

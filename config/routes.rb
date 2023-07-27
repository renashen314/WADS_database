Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users
  resources :webapps
  resources :developers
  root "static_pages#homepage"
end

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users
  resources :webapps
  resources :developers
  get "static_pages/about", to: "static_pages#about"
  root "static_pages#homepage"
end

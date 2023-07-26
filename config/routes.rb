Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get '/users/manage_roles', to: 'users#manage_roles'
  resources :users
  resources :webapps
  resources :developers
  root "webapps#index"
end

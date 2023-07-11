Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :webapps
  resources :developers
  
  root "webapps#index"
end

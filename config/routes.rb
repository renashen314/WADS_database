Rails.application.routes.draw do
  devise_for :users
  resources :webapps
  resources :developers
  
  root "webapps#index"
end

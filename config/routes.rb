Rails.application.routes.draw do
  resources :webapps
  resources :developers
  
  root "webapps#index"
end

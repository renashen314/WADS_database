Rails.application.routes.draw do
  root "webapps#index"
  resources :webapps
  resources :developers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

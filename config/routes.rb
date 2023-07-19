Rails.application.routes.draw do
  resources :webapps
  resources :developers
  # get :autocomplete_webapp_developer, :on => :collection
  root "webapps#index"
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
  get '/nominate', to: 'nominations#new', as: 'new_nomination'
  post '/nominations', to: 'nominations#create', as: 'nominations'  
end

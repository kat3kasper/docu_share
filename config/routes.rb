Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "documents#new"

  get '/documents/share/:shared_id', to: 'documents#share'

  resources :documents
end

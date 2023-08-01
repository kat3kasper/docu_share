Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "documents#index"

  get '/documents/share/:shared_id', to: 'documents#share', as: 'share_document'

  resources :documents
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookmarks, only: [:create, :destroy]
      resources :comments, only: [:create]
      resources :diagnoses, only: [:create]
      resources :map_markers, only: [:index, :create, :destroy]
      resources :reported_symptoms, only: [:create, :destroy]
      resources :symptoms, only: [:index]
      resources :users, only: [:show, :create]

      post '/auth', to: 'auth#create'
      get '/current-user', to: 'auth#show'

    end
  end
end
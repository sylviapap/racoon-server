Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bookmarks, only: [:index, :show, :create, :destroy]
      resources :comments, only: [:index, :show, :create]
      resources :diagnoses, only: [:index, :show, :create, :destroy]
      resources :map_markers, only: [:index, :show, :create, :destroy]
      resources :reported_symptoms, only: [:index, :show, :create, :destroy]
      resources :symptoms, only: [:index, :show]
      resources :users, only: [:show, :create, :update, :destroy]

      post '/auth', to: 'auth#create'
      get '/current-user', to: 'auth#show'

    end
  end
end
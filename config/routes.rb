Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :bookmarks
      resources :map_markers
      resources :comments
      resources :symptoms
      resources :reported_symptoms

      post '/auth', to: 'auth#create'
      get '/profile', to: 'auth#show'

    end
  end
end
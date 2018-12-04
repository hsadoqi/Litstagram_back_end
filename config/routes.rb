Rails.application.routes.draw do
      resources :images
      resources :users
      resources :likes
      resources :comments
      get '/current_user', to: 'auth#show'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

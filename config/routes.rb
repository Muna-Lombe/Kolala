Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do 
      resources :users, only: [:index, :create, :show, :update, :destroy]
      get 'users/:id/profile', to:"users#profile", as: :user_profile
      resources :bookings, only: [:show, :create, :destroy ]
      post 'bookings/:id', to:"bookings#create_comment", as: :create_comment
      resources :rooms, only: [ :index, :show, :create, :update, :destroy ]
      # get 'rooms?:query', to:"rooms#search", as: :rooms_search
      post '/login', to: 'login#login' 
    end
  end
end
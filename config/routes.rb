Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do 
      resources :users, only: [:index, :create, :show, :update, :destroy]
      get 'users/:id/profile', to:"users#profile", as: :user_profile
      resources :bookings, only: [:show, :create, :destroy ]
      resources :rooms, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
end
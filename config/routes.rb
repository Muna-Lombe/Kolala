# Rails.application.routes.draw do
#   root to: 'rooms#index'
#   resources :user, only: [:create, :show, :update, :destroy] do
#     resources :room, except: [:show]
#     get 'rooms/:id', to: "rooms#show", as: :room_show
#     resources :booking
#   end
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do 
      resources :users , only: [:create, :show, :update, :destroy]
      resources :booking
      resources :rooms, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
end
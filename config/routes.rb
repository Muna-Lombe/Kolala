Rails.application.routes.draw do
  root to: 'rooms#index'
  resources :user, only: [:create, :show, :update, :destroy] do
    resources :room, except: [:show]
    get 'rooms/:id', to: "rooms#show", as: :room_show
    resources :booking
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

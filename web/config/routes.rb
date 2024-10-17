# Rails.application.routes.draw do
#   devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }, sign_out_via: :get
#   get 'pages/show'
#   post "/graphql", to: "graphql#execute"
#   root 'home#index'
#   get '/your_trips' => 'reservations#your_trips'
#   resources :reservations, only: [:create]
# end

# Rails.application.routes.draw do
#   devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }, sign_out_via: :get
#   get 'pages/show'
#   post "/graphql", to: "graphql#execute"
#   root 'home#index'
#   get '/your_trips', to: 'reservations#your_trips'
#   get 'reservation', to: 'reservations#index'
#   resources :reservations
  
#   resources :reservations, only: [:create, :destroy] do
#     collection do
#       get 'your_trips'
#     end
#   end
# end
Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }, sign_out_via: :get
  
  root 'home#index'
  get 'pages/show'
  post "/graphql", to: "graphql#execute"

  resources :reservations do
    collection do
      get 'your_trips'
    end
  end

  # 'reservation' シングルページのルートを追加
  get 'reservation', to: 'reservations#index'
end
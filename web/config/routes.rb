Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }, sign_out_via: :get
  get 'pages/show'
  post "/graphql", to: "graphql#execute"
  root 'home#index'
end

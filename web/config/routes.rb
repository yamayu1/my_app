Rails.application.routes.draw do
  devise_for :users
  get 'pages/show'
  post "/graphql", to: "graphql#execute"
  root 'home#index'
end

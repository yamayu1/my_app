Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  post "/graphql", to: "graphql#execute"
  root 'home#index'

  get '*path', to: 'home#index'
end

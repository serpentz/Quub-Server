Rails.application.routes.draw do
  resources :group_admins
  resources :user_groups
  resources :groups
  resources :users
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

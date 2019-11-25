Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "posts", to: "posts#index"
  get "posts/new", to: "posts#new"
  get "posts/:id", to: "posts#show"
  post "posts", to: "posts#create"
  get "posts/:id/edit", to: "posts#edit"
  patch "posts/:id", to: "posts#update"
  delete "posts/:id", to: "posts#destroy"
end

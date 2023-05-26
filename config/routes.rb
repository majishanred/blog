Rails.application.routes.draw do
  resources :subscriptions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :users, :controllers => {
    registrations: 'users/registrations'
  }

  resources :users, controller: "users", only: [:index, :show]

  get "/my_posts", to: "posts#user_posts"
  
  root "posts#index"

  resources :posts
end

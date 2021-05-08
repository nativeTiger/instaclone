Rails.application.routes.draw do
  get 'posts/index'
  get 'accounts/index'
  devise_for :accounts
  #dashboard
  get "/dashboard" => "accounts#index"
  resources :posts, only: [:new, :create, :show]
  root to: "public#homepage"

end

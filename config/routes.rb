Rails.application.routes.draw do
  get 'likes/save_like'
  get 'posts/index'
  get 'accounts/index'
  devise_for :accounts
  #dashboard
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/like/:post_id" => "likes#save_like", as: :like_post
  resources :posts, only: [:new, :create, :show]
  root to: "public#homepage"

end

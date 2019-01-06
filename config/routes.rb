Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do 
    resources :users, only: [:index, :update] do
      resources :posts
    end
  
  end
end

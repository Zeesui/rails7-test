Rails.application.routes.draw do
  devise_for :users

  resources :welcome

  resources :groups do
    member do
      get :join
      get :quit
    end
    resources :posts

  end

  namespace :account do
    resources :groups do
      member do
        get :quit
      end
    end
    resources :posts
  end

  root "groups#index"
end

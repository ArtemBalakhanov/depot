Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :products
  resources :users
  resources :roles
  resources :persons
  resources :store
  resources :topics

  get 'users/index'

  authenticated :user do
    root :to => 'products#index', as: :authenticated_root
  end
  root :to => 'products#index'

end

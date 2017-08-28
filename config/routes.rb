Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  scope "/admin" do
    resources :users
  end

  resources :ads
  resources :users
  resources :roles
  resources :topics
  get 'users/index'


  authenticated :user do
    root :to => 'ads#index', as: :authenticated_root
  end
  root :to => 'ads#index'

end

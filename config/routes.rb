Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile', as: 'user_root'

  get 'store/index'

  resources :products

  root to: 'store#index', as: 'store'
end

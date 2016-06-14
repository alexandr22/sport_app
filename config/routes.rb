Rails.application.routes.draw do
  resources :profiles
  resources :personal_trainings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'persons/profile'
  root 'persons#main'

  get 'persons/main', as: 'user_root'
end

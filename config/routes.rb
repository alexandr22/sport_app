Rails.application.routes.draw do
  resources :profiles
  resources :personal_trainings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'persons#profile'

  get 'persons/profile', as: 'user_root'
end

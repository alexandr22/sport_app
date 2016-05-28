Rails.application.routes.draw do
  devise_for :users
  root 'persons#profile'

  get 'persons/profile', as: 'user_root'
end

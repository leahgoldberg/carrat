Rails.application.routes.draw do

  root 'welcome#index'

  resources :rewards, only: [:index]
  resources :completed_challenges, only: [:create]
  resources :claimed_rewards, only: [:create]

end

Rails.application.routes.draw do

  root 'welcome#index'

  resources :rewards, only: [:index, :create]
  resources :completed_challenges, only: [:create]
  resources :claimed_rewards, only: [:create]

end

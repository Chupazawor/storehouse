Rails.application.routes.draw do
  root 'home_page#index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  devise_for :users
  resources :users, only: %i[index destroy]
end

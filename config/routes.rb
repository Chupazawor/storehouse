Rails.application.routes.draw do
  root 'home_page#index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  devise_for :users
  resources :admin_user, only: %i[show update]
  resources :users do
    resource :user_profile, only: %i[show create update]
  end
end

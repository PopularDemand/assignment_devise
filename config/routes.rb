Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: [:index, :show]
  devise_scope :users do
    get 'signup', to: 'devise/registrations#new'
  end
end

Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: [:index, :show]
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
  end
end

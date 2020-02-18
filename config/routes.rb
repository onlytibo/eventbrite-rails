Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :users, only: [:show]
  resources :events, only: [:index, :new, :show, :create]
end

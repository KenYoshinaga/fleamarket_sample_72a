Rails.application.routes.draw do
  devise_for :users
  get 'displays/index'

  resources :users, only: [:index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "displays#index"
end

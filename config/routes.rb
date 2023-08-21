Rails.application.routes.draw do
  devise_for :users
  root to: "landings#index"
  resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
  #resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
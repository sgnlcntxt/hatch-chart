Rails.application.routes.draw do

  root 'fisheries#index'


  resources :matches
  resources :hatches
  resources :bugs
  resources :flies
  resources :fisheries
  devise_for :users
end

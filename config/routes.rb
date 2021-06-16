Rails.application.routes.draw do
  devise_for :users
  resources :crisps
  root 'crisps#index'  
end

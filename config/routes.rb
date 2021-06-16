Rails.application.routes.draw do
  resources :crisps
  root 'crisps#index'  
end

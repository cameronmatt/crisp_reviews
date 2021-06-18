Rails.application.routes.draw do
  devise_for :users
  resources :crisps do 
    resources :reviews
  end
  root 'crisps#index'  
end

Rails.application.routes.draw do
  
  devise_for :users, controllers:{ omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :crisps do 
    resources :reviews
  end

  resources :reviews do 
    resources :comments
  end

  root 'crisps#index'  
end

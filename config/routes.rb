Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  resources :about, only: [:index]
  post 'oracle', to: 'oracle#index'
    
  root 'home#index'
end

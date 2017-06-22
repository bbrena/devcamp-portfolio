  Rails.application.routes.draw do
    
  resources :blogs do
    member do 
      get :toggle_status
  end
    
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
end
  
  root to: 'pages#home'
end
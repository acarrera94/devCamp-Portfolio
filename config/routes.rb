Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  #create my own show action
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  #this is a custom route
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  #setting the root to the home page.
  root to: 'pages#home'

end

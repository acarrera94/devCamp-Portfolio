Rails.application.routes.draw do
  resources :portfolios
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources is a reserved keyword that usees the keywords in the ApplicationController
  #such as show, new, edit, etc. to route them to the right places.
end

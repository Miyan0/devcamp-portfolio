Rails.application.routes.draw do
  
  # custom routing here (portfolio singular for show) 
  resources :portfolios, except: [:show]
  # we still have to change our link_to in the index view:
  #   change portfolio_show to portfolio_show_path
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # endpoints can be name anything
  get 'asdfasdf', to: 'pages#contact'

  resources :blogs
  root to: 'pages#home'
end

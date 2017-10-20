Rails.application.routes.draw do
  
  devise_for :users
  # custom routing here (portfolio singular for show) 
  resources :portfolios, except: [:show]
  # we still have to change our link_to in the index view:
  #   change portfolio_show to portfolio_show_path
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # endpoints can be name anything
  get 'asdfasdf', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end

  end

  root to: 'pages#home'
end

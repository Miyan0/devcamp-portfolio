Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # endpoints can be name anything
  get 'asdfasdf', to: 'pages#contact'
  
  resources :blogs
  root to: 'pages#home'
end

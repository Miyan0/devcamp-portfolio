Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  # custom routing here (portfolio singular for show)
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  # we still have to change our link_to in the index view:
  #   change portfolio_show to portfolio_show_path
  get 'angular-items', to: 'portfolios#angular'

  # modifie ca parce que gossant d'avoir au singulier pour l'edit seulement.
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  # endpoints can be name anything
  get 'asdfasdf', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end

  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end

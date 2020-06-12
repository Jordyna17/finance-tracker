Rails.application.routes.draw do

  resources :user_stocks
  devise_for :users
  
  #devise_for :u_sers
  root 'welcome#index'

  get 'my_portfolio', to: 'users#my_portfolio'

  get 'search_stock', to: 'stocks#search'

  get 'share', to: 'users#sharesocial'

  resources :stocks, defaults: { format: 'json' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

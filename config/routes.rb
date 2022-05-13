Rails.application.routes.draw do
  root to: 'gossips#index'
  # get '/bonjour/:name', to: 'static_pages#bonjour'
  # get '/team', to: 'static_pages#team'
  # get '/contact', to: 'static_pages#contact'
  resources :static_pages


  resources :gossips do
    resources :comments
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end

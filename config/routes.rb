Rails.application.routes.draw do
  root 'static_pages#index'
  get '/bonjour/:name', to: 'static_pages#bonjour'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/gossip/:id', to: 'static_pages#gossip', as: '/gossip'
  get '/author/:id', to: 'static_pages#author', as: '/author'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

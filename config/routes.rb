Rails.application.routes.draw do
  root 'welcome#index'

  get '/press',            to: 'press#index'
  get '/politics',        to: 'politics#index'
  get '/about',            to: 'about#index'
  get '/join',            to: 'join#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/.well-known/acme-challenge/:id' => 'pages#letsencrypt'
end

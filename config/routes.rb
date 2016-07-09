Rails.application.routes.draw do

  root to: "articles#index"

  get '/articles', to: 'articles#index'
  post '/articles', to: "articles#create"

  resource :article
end

Rails.application.routes.draw do

  #root to: "articles#index"

  get '/articles', to: 'articles#index'

  resource :article
end

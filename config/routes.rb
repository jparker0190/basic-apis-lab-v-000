Rails.application.routes.draw do
  get '/search', to: 'repositories#search'

  root 'repositories#search'
end

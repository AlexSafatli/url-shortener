Rails.application.routes.draw do

  root to: 'shortened_url#new'
  get '/:id', to: 'shortened_url#show', as: 'redirect'
  post '/create/', to: 'shortened_url#create'

end
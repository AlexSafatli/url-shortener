Rails.application.routes.draw do

  root 'shortened_url#index'
  get '/:id', to: 'shortened_url#show'
  post '/create/', to: 'shortened_url#create'

end

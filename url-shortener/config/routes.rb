Rails.application.routes.draw do

  get '/:id', to: 'shortened_url#show'
  post '/create/', to: 'shortened_url#create'

end

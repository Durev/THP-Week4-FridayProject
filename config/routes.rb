Rails.application.routes.draw do

  root 'static_pages#home'

  get '/new', to: 'corsaires#new'

  get '/show', to: 'corsaires#show'

  get '/edit', to: 'corsaires#edit'

  get 'corsaires', to: 'corsaires#index'

end

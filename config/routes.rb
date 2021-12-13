Rails.application.routes.draw do
  get 'home/index'
  get '/survey/:id', to: 'surveys#show'
  post '/survey/:id', to: 'surveys#create_feedback'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

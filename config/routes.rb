Rails.application.routes.draw do
  resources :concerts, only: [:new, :create, :show]

  get '/' => 'concerts#new'

  get '/concerts/:id' => 'concerts#show'

  get '/concert/today' => 'concerts#todays_concerts'
end

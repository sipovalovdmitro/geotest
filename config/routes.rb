Rails.application.routes.draw do
  resources :tickets
  root 'api#index'
  # get 'api/index'
  post 'api/create_ticket_with_excavator'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

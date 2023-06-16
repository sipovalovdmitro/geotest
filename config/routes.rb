Rails.application.routes.draw do
  resources :tickets
  root 'tickets#index'
  post 'api/create_ticket_with_excavator'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

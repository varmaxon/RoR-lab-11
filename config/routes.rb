Rails.application.routes.draw do
  root "articles#index"

  resources :articles
  get 'xml', to: 'articles#db_to_xml'
  # get 'last_db', to: 'articles#last_db'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

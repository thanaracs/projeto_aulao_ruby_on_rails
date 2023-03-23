Rails.application.routes.draw do
  #AS ROTAS SÃO DEFINIDAS EM PLURAL
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :to => "hello#index"

  #      rota       metodo para acessar
  get '/people' => 'person#index'
  get '/people/id' => 'person#show'
  get '/people/new' => 'person#new'
  post '/people' => 'person#create'
  delete '/people/1' => 'person#delete'

  # resources :person    == criar todas as rotas de crud
  resources :hello
end

Calpal::Application.routes.draw do
  root :to => 'welcome#index'

  resources :users, :foods, :meals

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

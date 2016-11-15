Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  get '/publish/:id', to: 'posts#update'
end

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  patch '/publish/:id', to: 'posts#update'
end

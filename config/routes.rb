Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, except: :update

  patch '/publish/:id', to: 'posts#update'
end

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, except: :update do
    resources :comments
  end

  patch '/publish/:id', to: 'posts#update'
end

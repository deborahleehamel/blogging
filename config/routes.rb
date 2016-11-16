Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, except: :update do
    resources :comments
  end

  namespace :api do
    namespace :v1 do
      get '/posts/sort_by_title', to: 'posts#index'
    end
  end

  patch '/publish/:id', to: 'posts#update'
end

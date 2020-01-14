Rails.application.routes.draw do
  resources :users do
    member do
      get 'posts'
    end
  end

  resources :posts
end
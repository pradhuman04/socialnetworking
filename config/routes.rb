Rails.application.routes.draw do
  
  resources :users do
    resource :posts
    resource :comments
  end
  root "users#index"
end

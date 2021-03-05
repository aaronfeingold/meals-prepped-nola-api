Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :meals

      resources :users do 
        resources :meals
      end

      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/sign_up', to: 'users#create'
    end 
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api do 
    mount_devise_token_auth_for 'User', at: 'auth'
    namespace :v1 do 
      resources :shortener 
    end
  end

  get "/:Code", to: "api/v1/shortener#show"
end

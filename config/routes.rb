Rails.application.routes.draw do
  devise_for :users
  root  'pages#home'
  #get 'pages/home'
  resources :employees
  resources :students
  resources :products
  resources :types
  get "about"=>'pages#about_us'
  get "contact_us"=>'pages#contact_us'
  get "terms"=>'pages#terms_and_conditions'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

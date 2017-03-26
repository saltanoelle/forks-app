Rails.application.routes.draw do
  get '/home' => 'pages#landing'

  get '/' => 'posts#index'

  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :sessions, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :restaurants, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :posts do
 
end
  
  

  # get "/posts"=>"posts#index"
  # get "/posts/new"=> "posts#new"
  # post "/posts"=> "posts#create"
  # get "/posts/:id" => "posts#show"
  
 
  # get "/posts/:id/edit"=>"posts#edit"
  # patch "/posts/:id" => "posts#update"

  # delete "/posts/:id"=> "posts#destroy"


  post "/search" => "restaurants#search"

  get "/signup" => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"
  
  get "/logout" => "sessions#destroy"


  # get "/restaurants" =>"restaurants#index"
  # get "/restaurants/:id" => "restaurants#show"

  get "/forks" => "forks#index"
  get "forks/new" => "forks#new"
  post "/forks" => "forks#create"
  get "/forks/:id" => "forks#show"
  get "/users/:id/forks" => "forks#index"


  post "/search" => "posts#search"
  get "/businesses" => "businesses#index" 
  get "/businesses" => "businesses#show" 
  get "/restaurants/new"=> "posts#new"
  post "/restaurants"=> "posts#create"

  post "/boards" => "boards#create"
  get "/boards/new" => "boards#new"
  get "/boards/:id" => "boards#show"

  post "/comments" => "comments#create"





end

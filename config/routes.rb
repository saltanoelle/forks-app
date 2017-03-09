Rails.application.routes.draw do
  root to: "posts#index"
  get "/posts"=>"posts#index"
  get "/posts/new"=> "posts#new"
  post "/posts"=> "posts#create"
  get "/posts/:id" => "posts#show"
  
 
  get "/posts/:id/edit"=>"posts#edit"
  patch "/posts/:id" => "posts#update"

  delete "/posts/:id"=> "posts#destroy"



  get "/signup" => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"
  
  get "/logout" => "sessions#destroy"


  get "/restaurants" =>"restaurants#index"
  get "/restaurants/:id" => "restaurants#show"

end

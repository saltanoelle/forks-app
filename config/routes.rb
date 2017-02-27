Rails.application.routes.draw do
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
  
  get "/logout" => "sessions#destroy"
end

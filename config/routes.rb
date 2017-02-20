Rails.application.routes.draw do
  get "/posts"=>"posts#index"
  get "/posts/:id" => "posts#show"


  get "/signup" => "users#new"

  post "/users" => "users#create"

  get "/login" => "sessions#new"

  post "/login" => "sessions#create"
  
  get "/logout" => "sessions#destroy"
end


  Rails.application.routes.draw do
  get "posts/post_done" => "posts#post_done"
  get "posts/index" =>"posts#index"
  get "posts/new" =>"posts#new_temporary"
  post "posts/new" =>"posts#new_temporary"
  post "posts/create" =>"posts#create"
  get "posts/:id" =>"posts#show"
  root "home#top" 
  get "home/about" =>"home#about"
  
  
  end





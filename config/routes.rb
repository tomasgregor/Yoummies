Yoummies::Application.routes.draw do

  root :to => "foods#index"
  
  resources :session, :only => [:new, :create, :destory]
  
  resources :foods do
    resources :posts
  end
  
  resources :posts
 
  resources :users 

end

# session_index POST   /session(.:format)                       session#create
#    new_session GET    /session/new(.:format)                   session#new
# 
# food_posts     GET    /foods/:food_id/posts(.:format)          posts#index
#                POST   /foods/:food_id/posts(.:format)          posts#create
#  new_food_post GET    /foods/:food_id/posts/new(.:format)      posts#new
# edit_food_post GET    /foods/:food_id/posts/:id/edit(.:format) posts#edit
#      food_post GET    /foods/:food_id/posts/:id(.:format)      posts#show
#                PUT    /foods/:food_id/posts/:id(.:format)      posts#update
#                DELETE /foods/:food_id/posts/:id(.:format)      posts#destroy
# 
#          foods GET    /foods(.:format)                         foods#index
#                POST   /foods(.:format)                         foods#create
#       new_food GET    /foods/new(.:format)                     foods#new
#      edit_food GET    /foods/:id/edit(.:format)                foods#edit
#           food GET    /foods/:id(.:format)                     foods#show
#                PUT    /foods/:id(.:format)                     foods#update
#                DELETE /foods/:id(.:format)                     foods#destroy
# 
#          posts GET    /posts(.:format)                         posts#index
#                POST   /posts(.:format)                         posts#create
#       new_post GET    /posts/new(.:format)                     posts#new
#      edit_post GET    /posts/:id/edit(.:format)                posts#edit
#           post GET    /posts/:id(.:format)                     posts#show
#                PUT    /posts/:id(.:format)                     posts#update
#                DELETE /posts/:id(.:format)                     posts#destroy
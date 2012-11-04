Yoummies::Application.routes.draw do
  resources :shares
  resources :foods

end



#     shares GET    /shares(.:format)          shares#index
#            POST   /shares(.:format)          shares#create
#  new_share GET    /shares/new(.:format)      shares#new
# edit_share GET    /shares/:id/edit(.:format) shares#edit
#      share GET    /shares/:id(.:format)      shares#show
#            PUT    /shares/:id(.:format)      shares#update
#            DELETE /shares/:id(.:format)      shares#destroy
#      foods GET    /foods(.:format)           foods#index
#            POST   /foods(.:format)           foods#create
#   new_food GET    /foods/new(.:format)       foods#new
#  edit_food GET    /foods/:id/edit(.:format)  foods#edit
#       food GET    /foods/:id(.:format)       foods#show
#            PUT    /foods/:id(.:format)       foods#update
#            DELETE /foods/:id(.:format)       foods#destroy
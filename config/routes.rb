Rails.application.routes.draw do
  
  root 'sessions#new'

  resources :users, except: [:show]
  resource :session, only: [:create, :new]
  resources :chatrooms
  resources :messages 

  get '/user_logout' => 'sessions#user_logout', as: :user_logout

end

#   Prefix Verb   URI Pattern                     Controller#Action
#        messages_post GET    /messages/post(.:format)        messages#post
# chatroom_onlineusers GET    /chatroom/onlineusers(.:format) chatroom#onlineusers
#     chatroom_capacity GET    /chatroom/capacity(.:format)    chatroom#capacity
#                 root GET    /                               sessions#new
#                users GET    /users(.:format)                users#index
#                      POST   /users(.:format)                users#create
#             new_user GET    /users/new(.:format)            users#new
#            edit_user GET    /users/:id/edit(.:format)       users#edit
#                 user PATCH  /users/:id(.:format)            users#update
#                      PUT    /users/:id(.:format)            users#update
#                      DELETE /users/:id(.:format)            users#destroy
#              session POST   /session(.:format)              sessions#create
#          new_session GET    /session/new(.:format)          sessions#new
#                      DELETE /session(.:format)              sessions#destroy





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end


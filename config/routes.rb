Rails.application.routes.draw do


  devise_for :users

  root "users#index"

  get "/users", :controller => "users", :action => "index"
  get "/my_children", :controller => "users", :action => "my_children"
  get "/to_daycare", :controller => "users", :action => "to_daycare"
  get "/from_daycare", :controller => "users", :action => "from_daycare"
  # Routes for the Class resource:
  # CREATE
  get "/classrooms/new", :controller => "classrooms", :action => "new"
  post "/create_classroom", :controller => "classrooms", :action => "create"

  # READ
  get "/classrooms", :controller => "classrooms", :action => "index"
  get "/classrooms/:id", :controller => "classrooms", :action => "show"

  # UPDATE
  get "/classrooms/:id/edit", :controller => "classrooms", :action => "edit"
  post "/update_classroom/:id", :controller => "classrooms", :action => "update"

  # DELETE
  get "/delete_classroom/:id", :controller => "classrooms", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"
  post "/update_item_return/:id", :controller => "items", :action => "update_return"
  post "/update_item_take/:id", :controller => "items", :action => "update_take"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  # Routes for the Family resource:
  # CREATE
  get "/families/new", :controller => "families", :action => "new"
  post "/create_family/", :controller => "families", :action => "create"

  # READ
  get "/families", :controller => "families", :action => "index"
  get "/families/:id", :controller => "families", :action => "show"

  # UPDATE
  get "/families/:id/edit", :controller => "families", :action => "edit"
  post "/update_family/:id", :controller => "families", :action => "update"

  # DELETE
  get "/delete_family/:id", :controller => "families", :action => "destroy"
  #------------------------------

  # Routes for the Child resource:
  # CREATE
  get "/children/new", :controller => "children", :action => "new"
  post "/create_child", :controller => "children", :action => "create"

  # READ
  get "/children", :controller => "children", :action => "index"
  get "/children/:id", :controller => "children", :action => "show"

  # UPDATE
  get "/children/:id/edit", :controller => "children", :action => "edit"
  post "/update_child/:id", :controller => "children", :action => "update"

  # DELETE
  get "/delete_child/:id", :controller => "children", :action => "destroy"

  #------------------------------

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
end

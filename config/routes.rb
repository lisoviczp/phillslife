Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/new'

  devise_for :users
  get 'about/index'
  get 'about/show'
  get 'about' => 'about#index'

  get 'songs/show'

  get 'songs/current'

  get 'home/index'

  # get 'pictures' => 'home#index'

  get 'pictures/approve' => 'pictures#approve'



  post 'pictures/approveThePic/:id' => 'pictures#approveThePic', as: 'approve_the_pic_post'
  get 'pictures/approveThePic/:id' => 'pictures#approveThePic', as: 'approve_the_pic_get'



  get 'pictures/approve/:id' => 'pictures#approve', as: 'pic_approve'
  root 'home#index'

  # map.resources :pictures, :collection => { :approved => :put }

  resources :songs
  resources :pictures

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

Rails.application.routes.draw do

  


  get 'users/new'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  resources :categories do
    resources :trainings
  end
    
  resources :certifications

  resources :organizations

  
  get 'static_pages/home'

  get 'committees', to: 'static_pages#committees'

  get 'about', to: 'static_pages#about'
  get 'cap_center', to: 'static_pages#cap_center'

  get 'staff', to: 'static_pages#staff'

  get 'trainings', to: 'static_pages#trainings'

  get 'contact_us', to: 'static_pages#contact_us'

  get 'resources', to: 'static_pages#resource_library'

  get 'standards_and_policies', to: 'static_pages#family_support_standards'

  # get 'policy_and_planning', to: 'static_pages#policy_and_planning'

  get 'committees', to: 'static_pages#committees'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

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

GstRenewables::Application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :projects
  resources :pv_commissions
  resources :recombiners
  resources :pv_array_tests
  resources :visual_inspections
  resources :inverter_inspections
  resources :data_acquisition_systems
  resources :string_tests
  resources :admins, only: [:index]
  get "/admin", to: "admins#index", as: "administrator"
  get "/admin/add_editors_admins", to: "admins#add_editor_admin", as: "add_editor_admin"
  get "/admin/view_editors_admins", to: "admins#view_editor_admin", as: "view_editor_admin"

  get "/admin/user/:id/remove_admin", to: "admins#remove_admin", as: "remove_admin"
  get "/admin/user/:id/remove_editor", to: "admins#remove_editor", as: "remove_editor"
  get "/admin/user/:id/add_admin/:q", to: "admins#add_admin", as: "add_admin"
  get "/admin/user/:id/add_editor/:q", to: "admins#add_editor", as: "add_editor"

  
  get "/projects/:id/add_customers", to: "projects#add_customers", as: "add_customers_to_project"
  get "/projects/:id/associate_user/:user_id", to: "projects#associate_user", as: "associate_user_to_project"
  get "/projects/:id/deassociate_user/:user_id", to: "projects#disassociate_user", as: "disassociate_user_from_project"

  # resources :projects do
  #   resources :pv_commissions do
  #     resources :pv_array_tests do
  #       resources :string_tests
  #     end
  #     resources :visual_inspections
  #     resources :inverter_inspections
  #   end
  # end
  
  
  get "/pv_array_tests/:id/edit_all_string_tests", to: "string_tests#edit_all", as: "edit_all_string_tests"
  put "/pv_array_tests/:id/update_all_string_tests", to: "string_tests#update_all", as: "update_all_string_tests"
  get "/pv_array_tests/:id/edit_all_individually_string_tests", to: "string_tests#edit_all_individually", as: "edit_all_string_tests_individually"
  put "/pv_array_tests/:id/update_all_individually_string_tests", to: "string_tests#update_all_individually", as: "update_all_string_tests_individually"

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

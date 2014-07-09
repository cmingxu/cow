# -*- encoding : utf-8 -*-
Cow::Application.routes.draw do
  resources :bugs
  namespace :admin do
    resources :huxings
    resources :book_records
    resources :departments
    resources :projects
    resources :visits
    resources :applications
    resources :contracts
    resources :clients
    resources :reports
    resources :users
    resources :pages
    resources :messages
    get "dashboard" => "base#dashboard"
    get "configuration" => "base#configuration"
  end

  devise_for :users


  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/job"
  get "welcome/links"
  get "welcome/news"
  get "welcome/term"
  get "welcome/dashboard"


  match "about" => "welcome#about"
  match "team" => "welcome#team"
  match "contact" => "welcome#contact"
  match "jobs" => "welcome#jobs"
  match "sign_as" => "welcome#sign_as"
  match "routes" => "welcome#routes"
  match "change" => "admin/users#password"
  match "change_password" => "admin/users#change_password"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end

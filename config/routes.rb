EHR::Application.routes.draw do

  

  #get "ear_systems/new"

  #get "eye_systems/new"

  #get "muscle_joints_bone_systems/new"

  #get "muscle_joints_bones/new"

  #get "eyes/new"

  #get "nerves/new"

  #get "ears/new"

 # get "nervouses/new"
#
  #get "histories/new"

  ##get "skins/new"

  ##get "psychiatrics/new"

 ## get "nervouss/new"

  ##get "muscle_joints_boness/new"

 ## get "historys/new"

  ##get "eyess/new"

  ##get "earss/new"

  ##get "generals/new"
resources :skins
resources :psychiatrics
resources :nerves
resources :muscles
resources :histories
resources :eyesystems
resources :earsystems
resources :generals
resources :doctors
resources :sessions,   only: [:new, :create, :destroy]
resources :patients, only:[:new, :show, :create]
resources :static_pages
root to: 'static_pages#home'

match '/signup', to: 'doctors#new'
match '/help',    to: 'static_pages#help'
match '/clinical', to: 'static_pages#clinical'
match '/signin',  to: 'sessions#new'
match '/signout', to: 'sessions#destroy', via: :delete
match '/patients', to: 'patients#show'
match '/history',   to: 'histories#new'
match '/skin',   to: 'skins#new'
match '/psychiatric', to:'psychiatrics#new'
match '/nerve',  to:'nerves#new'
match '/muscle',  to:'muscles#new'
match '/eyesystem',  to:'eyesystems#new'
match '/earsystem', to:'earsystems#new'
match '/general', to:'generals#new'
match '/patient', to:'patients#new'


  ##get "patient_ident/new"

  ##get "doctors/new"

 ## get "static_pages/home"

 ## get "static_pages/help"









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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

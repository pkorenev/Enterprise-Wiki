EnterpriseWiki::Application.routes.draw do
  resources :variables

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  resources :pages, :except => :destroy do
    resources :revisions, :only => [:index, :create, :new, :show]
    resource :hyperlink, :only => [:edit, :show, :update]
  end
  
  resources :groups, :only => [:index, :create, :edit, :update, :destroy] do
    resources :memberships, :only => [:create, :destroy]
  end
  
  resources :themes

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'site#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

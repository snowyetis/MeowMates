Meowmates::Application.routes.draw do

  root to: 'home#index'

  # devise_scope :users do
  #   post 'home' => 'users/registrations#create'
  # end

  devise_for :users, :controllers => { :registrations => 'users/registrations' }

  devise_scope '/users' do
    resources :registrations
  end

  #devise_for :users, :post => '/home/index', :controllers => 'users/registrations#create'
  #post 'home' => 'users/registrations#create', :as => :user_registration_path

  # devise_for :users
  #   as :user do
  #     post 'home', to: 'users/registrations#create'
  # end

  get "home/index"
  get 'home/get_email' => 'home#get_email'
  get "home/show" => "home#show"
  get "profile/new" => "profile#new"
  get "home/login" => "home#login"

  get "animal/get_animals" => "animal#get_animals"

  # get "animal/new(.:format)" => "animal#new"
  # get "animal/:id" => "animal#show"
  # post "animal(.:format)" => "animal#create"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
      #resources :home, :profile
      resources :home, :animal

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

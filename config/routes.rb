Rails.application.routes.draw do


  get '/login', to:'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#delete'




  resources :users

  # get '/users', to: 'users#index'

  # post 'users', to: 'users#create'  #you will create def create in users_controll

  # get '/users/new', to: 'users#new', as: 'new_user'

  # get '/users/:id', to: 'users#show', as: 'user'

  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  # put '/users/:id/', to: 'users#update'

  # patch '/users/:id', to: 'users#update'

  # delete '/users/:id', to: 'users#delete' #you don't need to type as: 'destroy_user' because you always redirec to user_path (see in users_controll.erb) this method will be shown in show.html.erb

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

  root 'home#index'

  # get '/home', to: 'home#home'

end

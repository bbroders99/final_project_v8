FinalProjectV7::Application.routes.draw do

  devise_for :artists
  devise_for :buyers
  root 'pages#home'
  
  # Routes for the Portfolio_image resource:
  # CREATE
  get '/portfolio_images/new', controller: 'portfolio_images', action: 'new', as: 'new_portfolio_image'
  post '/portfolio_images', controller: 'portfolio_images', action: 'create', as: 'portfolio_images'

  # READ
  get '/portfolio_images', controller: 'portfolio_images', action: 'index'
  get '/portfolio_images/:id', controller: 'portfolio_images', action: 'show', as: 'portfolio_image'

  # UPDATE
  get '/portfolio_images/:id/edit', controller: 'portfolio_images', action: 'edit', as: 'edit_portfolio_image'
  patch '/portfolio_images/:id', controller: 'portfolio_images', action: 'update'

  # DELETE
  delete '/portfolio_images/:id', controller: 'portfolio_images', action: 'destroy'
  #------------------------------

  # Routes for the Idea_image resource:
  # CREATE
  get '/idea_images/new', controller: 'idea_images', action: 'new', as: 'new_idea_image'
  post '/idea_images', controller: 'idea_images', action: 'create', as: 'idea_images'

  # READ
  get '/idea_images', controller: 'idea_images', action: 'index'
  get '/idea_images/:id', controller: 'idea_images', action: 'show', as: 'idea_image'

  # UPDATE
  get '/idea_images/:id/edit', controller: 'idea_images', action: 'edit', as: 'edit_idea_image'
  patch '/idea_images/:id', controller: 'idea_images', action: 'update'

  # DELETE
  delete '/idea_images/:id', controller: 'idea_images', action: 'destroy'
  #------------------------------

  # Routes for the Bid resource:
  # CREATE
  get '/bids/new', controller: 'bids', action: 'new', as: 'new_bid'
  post '/bids', controller: 'bids', action: 'create', as: 'bids'

  # READ
  get '/bids', controller: 'bids', action: 'index'
  get '/bids/:id', controller: 'bids', action: 'show', as: 'bid'

  # UPDATE
  get '/bids/:id/edit', controller: 'bids', action: 'edit', as: 'edit_bid'
  patch '/bids/:id', controller: 'bids', action: 'update'

  # DELETE
  delete '/bids/:id', controller: 'bids', action: 'destroy'
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get '/artists/new', controller: 'artists', action: 'new', as: 'new_artist'
  post '/artists', controller: 'artists', action: 'create', as: 'artists'

  # READ
  get '/artists', controller: 'artists', action: 'index'
  get '/artists/:id', controller: 'artists', action: 'show', as: 'artist'

  # UPDATE
  get '/artists/:id/edit', controller: 'artists', action: 'edit', as: 'edit_artist'
  patch '/artists/:id', controller: 'artists', action: 'update'

  # DELETE
  delete '/artists/:id', controller: 'artists', action: 'destroy'
  #------------------------------

  # Routes for the Buyer resource:
  # CREATE
  get '/buyers/new', controller: 'buyers', action: 'new', as: 'new_buyer'
  post '/buyers', controller: 'buyers', action: 'create', as: 'buyers'

  # READ
  get '/buyers', controller: 'buyers', action: 'index'
  get '/buyers/:id', controller: 'buyers', action: 'show', as: 'buyer'

  # UPDATE
  get '/buyers/:id/edit', controller: 'buyers', action: 'edit', as: 'edit_buyer'
  patch '/buyers/:id', controller: 'buyers', action: 'update'

  # DELETE
  delete '/buyers/:id', controller: 'buyers', action: 'destroy'
  #------------------------------

  # Routes for the Idea resource:
  # CREATE
  get '/ideas/new', controller: 'ideas', action: 'new', as: 'new_idea'
  post '/ideas', controller: 'ideas', action: 'create', as: 'ideas'

  # READ
  get '/ideas', controller: 'ideas', action: 'index'
  get '/ideas/:id', controller: 'ideas', action: 'show', as: 'idea'

  # UPDATE
  get '/ideas/:id/edit', controller: 'ideas', action: 'edit', as: 'edit_idea'
  patch '/ideas/:id', controller: 'ideas', action: 'update'

  # DELETE
  delete '/ideas/:id', controller: 'ideas', action: 'destroy'
  #------------------------------

  get  '/home', controller: 'pages', action: 'home'




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

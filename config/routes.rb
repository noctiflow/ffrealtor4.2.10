Rails.application.routes.draw do
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
  get 'landing/buy1', to: 'landing#buy1'
  get 'landing/buy2', to: 'landing#buy2'
  get 'landing/buy3', to: 'landing#buy3'
  get 'landing/buy4', to: 'landing#buy4'
  get 'landing/sell1', to: 'landing#sell1'
  get 'landing/sell2', to: 'landing#sell2'
  get 'landing/sell3', to: 'landing#sell3'
  get 'landing/sell4', to: 'landing#sell4'
  post 'landing', action: :create1, controller: 'landing'
  post 'landing2', action: :create2, controller: 'landing'
  post 'landing3', action: :create3, controller: 'landing'
  post 'landing4', action: :create4, controller: 'landing'
  post 'landing5', action: :create5, controller: 'landing'
  post 'landing6', action: :create6, controller: 'landing'
  post 'landing7', action: :create7, controller: 'landing'
  post 'landing8', action: :create8, controller: 'landing'
  put 'landing/:id', to: 'landing#update1'
  put 'landing', to: 'landing#index'
  get 'landing', to: 'landing#index'
  get 'landing2', to: 'landing#index2'
  get 'landing3', to: 'landing#index3'
  get 'landing4', to: 'landing#index4'
  get 'landing5', to: 'landing#index5'
  get 'landing6', to: 'landing#index6'
  get 'landing7', to: 'landing#index7'
  get 'landing8', to: 'landing#index8'
  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'
  get '/calendars', to: 'calendar#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'calendar#events', as: 'events', calendar_id: /[^\/]+/
  put 'tasks/:id', to: 'tasks#update1'
  get 'matches', to: 'matches#index'
  get 'contacts/buyers', to: 'contacts#buyersindex'
  get 'contacts/sellers', to: 'contacts#sellersindex'
  get 'contacts/closed', to: 'contacts#closed'
  get 'leads/buyers', to: 'leads#buyersindex'
  get 'leads/sellers', to: 'leads#sellersindex'
  get 'logout_session'  => 'authentications#destroy'

  resources :contacts, id: /\d+/ do
    collection do
      get :advanced_search
      post :filter
      get :options
      get :field_group
      match :auto_complete, via: %i[get post]
      get :redraw
      get :versions
      delete 'destroy_multiple'
    end
    member do
      put :attach
      post :discard
      post :subscribe
      post :unsubscribe
      get :opportunities
    end
  end


  resources :leads, id: /\d+/ do
    collection do
      get :advanced_search
      post :filter
      get :options
      get :field_group
      match :auto_complete, via: %i[get post]
      get :redraw
      get :versions
      get :autocomplete_account_name
      delete 'destroy_multiple'
    end
    member do
      get :convert
      post :discard
      post :subscribe
      post :unsubscribe
      put :attach
      match :promote, via: %i[patch put]
      put :reject
    end
  end
end

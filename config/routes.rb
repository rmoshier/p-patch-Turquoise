Rails.application.routes.draw do

  get 'calendar/show'
  resources :events
  resource :calendar, only: [:show], controller: :calendar
  # root to: "calendar#show"

  get "calendar/show",        to: "calendars#show",         as: :show_calendar

  get "events/new",            to: "events#new"
  post "/events/new",          to: "events#create"
  get "/events/:id/edit",      to: "events#edit"
  post "/events/:id/edit",      to: "events#update"
  get "events/:id",           to: "events#show",           as: :show_event
  # Application Home

  get "/",                    to: "home#index",             as: :root
  post "/",                   to: "users#index"

  # Post routes

  get "/posts",               to: "posts#index",            as: :posts
  get "/posts/new",           to: "posts#new",              as: :new_post
  post "/posts/new",          to: "posts#create"
  get "/posts/:id",           to: "posts#show",             as: :show_post
  get "/posts/:id/edit",      to: "posts#edit",             as: :edit_post
  post "/posts/:id/edit",      to: "posts#update"
  # Tool routes

  get "/tools",               to: "tools#index",            as: :tools
  get "/tools/new",           to: "tools#new",              as: :new_tool
  post "/tools/new",          to: "tools#create"
  get "/tools/:id",           to: "tools#show",             as: :show_tool
  get "/tools/:id/edit",      to: "tools#edit",             as: :edit_tool
  get "/tools/rent/:id",     to: "tools#rent_tool"
  get "/tools/return/:id",   to: "tools#return_tool"

  # OAuth routes
  # /auth/:provider triggers the auth action; user is returned to:

  get "/auth/:provider/callback",   to: "sessions#create",      as: :connect
  get "/logout",                    to: "sessions#destroy",     as: :logout

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

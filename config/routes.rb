# == Route Map
#
#     Prefix Verb URI Pattern         Controller#Action
# user_index POST /user(.:format)     user#create
#       user GET  /user/:id(.:format) user#show
# idea_index POST /idea(.:format)     idea#create
#   new_idea GET  /idea/new(.:format) idea#new
#       idea GET  /idea/:id(.:format) idea#show
#      login GET  /login(.:format)    static#login
#            POST /login(.:format)    user#login
#       home GET  /home(.:format)     static#home
#

Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # get static#login ログイン画面
  # post user#login ログイン処理
  # get static#home HOME画面
  # get user#show MyPage画面
  # post user#create ユーザー登録処理
  # get idea#new Submit画面
  # post idea#create アイデア登録処理
  # get idea#show Idea Detail画面

  resources :user, only: [:show, :create], as: 'user'
  resources :idea, only: [:new, :create, :show], as: 'idea'

  get 'login' => 'static#login', as: 'login'
  post 'login' => 'user#login'
  get 'home' => 'static#home', as: 'home'

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

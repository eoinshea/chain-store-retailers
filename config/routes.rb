Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    #root 'welcome#index'

    devise_for :users, :controllers => { registrations: 'users/registrations' ,
                                         sessions: 'users/sessions' }

    devise_scope :user do
      authenticated :user do
        root 'dashboard#index', as: :authenticated_root
        post '/', to: 'dashboard#index', as: :authenticated_week_filter
      end

      unauthenticated do
        root 'home#index', as: :unauthenticated_root
      end
    end

    get '/about' , to: 'home#about'
    get '/contact', to: 'home#contact'
    get '/thanks', to: 'home#thanks' , as: :thanks_for_not_registering
    get '/not-yet', to: 'home#not_yet_approved' , as: :not_yet_approved

   

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

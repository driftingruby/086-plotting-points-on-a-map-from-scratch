Rails.application.routes.draw do
  resources :stores do
    resources :operation_hours
    collection do 
      get :map
    end
  end
  root to: 'stores#index'
end

# == Route Map
#
#                    Prefix Verb   URI Pattern                                          Controller#Action
#     store_operation_hours GET    /stores/:store_id/operation_hours(.:format)          operation_hours#index
#                           POST   /stores/:store_id/operation_hours(.:format)          operation_hours#create
#  new_store_operation_hour GET    /stores/:store_id/operation_hours/new(.:format)      operation_hours#new
# edit_store_operation_hour GET    /stores/:store_id/operation_hours/:id/edit(.:format) operation_hours#edit
#      store_operation_hour GET    /stores/:store_id/operation_hours/:id(.:format)      operation_hours#show
#                           PATCH  /stores/:store_id/operation_hours/:id(.:format)      operation_hours#update
#                           PUT    /stores/:store_id/operation_hours/:id(.:format)      operation_hours#update
#                           DELETE /stores/:store_id/operation_hours/:id(.:format)      operation_hours#destroy
#                map_stores GET    /stores/map(.:format)                                stores#map
#                    stores GET    /stores(.:format)                                    stores#index
#                           POST   /stores(.:format)                                    stores#create
#                 new_store GET    /stores/new(.:format)                                stores#new
#                edit_store GET    /stores/:id/edit(.:format)                           stores#edit
#                     store GET    /stores/:id(.:format)                                stores#show
#                           PATCH  /stores/:id(.:format)                                stores#update
#                           PUT    /stores/:id(.:format)                                stores#update
#                           DELETE /stores/:id(.:format)                                stores#destroy
#                      root GET    /                                                    stores#index
# 

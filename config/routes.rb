Rails.application.routes.draw do

  root 'site#index'
  get '/cards', to: 'site#showall'

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users do
    resources :cards, shallow: true
  end
  
end

#       root GET    /                                   site#index
#    user_cards GET    /users/:user_id/cards(.:format)     cards#index
#               POST   /users/:user_id/cards(.:format)     cards#create
# new_user_card GET    /users/:user_id/cards/new(.:format) cards#new
#     edit_card GET    /cards/:id/edit(.:format)           cards#edit
#          card GET    /cards/:id(.:format)                cards#show
#               PATCH  /cards/:id(.:format)                cards#update
#               PUT    /cards/:id(.:format)                cards#update
#               DELETE /cards/:id(.:format)                cards#destroy
#         users GET    /users(.:format)                    users#index
#               POST   /users(.:format)                    users#create
#      new_user GET    /users/new(.:format)                users#new
#     edit_user GET    /users/:id/edit(.:format)           users#edit
#          user GET    /users/:id(.:format)                users#show
#               PATCH  /users/:id(.:format)                users#update
#               PUT    /users/:id(.:format)                users#update
#               DELETE /users/:id(.:format)                users#destroy
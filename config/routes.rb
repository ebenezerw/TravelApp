Rails.application.routes.draw do
  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
  post 'destinations/search' => 'destinations#search', as: 'search_destinations'





root 'destinations#index'



resources :destinations do
  resources :interests

end

resources :conversations do
  resources :messages
 end

end

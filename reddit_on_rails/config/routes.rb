Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :subs

  resources :posts do
    resources :comments, only: [ :new ]
  end
  resource :session, only: [ :new, :create, :destroy ]
  resources :comments, only: [ :create, :show ]
end

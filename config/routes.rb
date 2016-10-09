Rails.application.routes.draw do
  get 'profile/view'

  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticated :user do
    root 'index#newsfeed'
  end
  root 'index#index'

  get '/profile/:id', to: 'profile#view'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

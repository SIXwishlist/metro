Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticated :user do
    root 'index#newsfeed'
  end
  root 'index#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

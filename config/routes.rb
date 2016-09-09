Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  root 'index#render_index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

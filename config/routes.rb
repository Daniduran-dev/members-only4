# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  # get 'posts/new'
  # post 'posts/create'
  # get 'posts/index'
  resources :posts, only: %i[new create index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

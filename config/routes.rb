# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'products#index'

  resources :products, only: %i[index] do
    resources :favorites, only: %i[create destroy]
  end
  resources :favorite_products, only: %i[index]
end

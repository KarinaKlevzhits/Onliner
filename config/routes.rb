# frozen_string_literal: true

Rails.application.routes.draw do
  get 'descriptions/sort_computer', to: 'descriptions#sort_computer'
  resources :descriptions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get '/products', action: :index, controller: 'products'
  get '/cases', action: :index, controller: 'cases'
  get '/test-places', action: :index, controller: 'test_places'
  post '/people', action: :create, controller: 'people'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get '/app', to: 'app/index#call', as: :app
  get '/:slug', to: 'tenant_home/index#call', as: :slug
  root 'home/index#call'

  modular_routes do
    namespace :app do
      resources :links, only: %i[index]
    end
  end
end

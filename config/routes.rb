# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get '/category_name' => 'ideas#index', as: 'category_name'
      resources :ideas
      resources :categories
    end
  end
end

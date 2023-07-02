Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: :index
  get 'benchmark/phlex_render', to: 'benchmark#phlex_render_benchmark'
  get 'benchmark/rails_render', to: 'benchmark#rails_render_benchmark'
end

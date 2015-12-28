Rails.application.routes.draw do

  get 'categories/index'

  get 'categories/index'

  root to: 'cards#index'

  resources :cards, only: [:index, :show]
  resources :categories, only: [:index, :show]
end

Rails.application.routes.draw do


  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/show'
    get 'items/edit'
    get 'sessions/new'
    resources :items
    resources :genres
    resources :customers
    get 'homes/top'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

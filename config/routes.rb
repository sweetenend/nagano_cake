Rails.application.routes.draw do

  root to: "homes#top"
  get "home/about" => "homes#about"

  scope module: :public do
    get 'customers/my_page' =>"customers#show"
    get 'customers/information/edit' => "customers#edit"
    patch 'customers/information/edit' => "customers#update"
    get 'customers/confirm' =>"customers#confirm"
    patch '/customers/withdrawal' => "customers#withdrawal"
    
    get '' => 'homes#top'
    get 'about' => 'homes#about', as: 'about'
    resources :cart_items, only:[:index, :update, :create, :destroy]
    delete 'cart_items/destroy_all' => "cart_items#destroy_all"
    resources :items
    resources :addresses, only:[:index, :create, :edit, :update, :destroy]
    get 'orders' => "orders#index"
    post 'orders' => "orders#create"
    get 'orders/new' => "orders#new"
    post 'orders/confirm' => "orders#confirm"
    get 'orders/done' => "orders#done"
    get 'order/:' => "orders#show"
  end

  namespace :admin do
    resources :items
    resources :genres
    resources :customers
    resources :orders
    get '' => 'homes#top'
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

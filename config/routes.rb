Rails.application.routes.draw do

  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
  end
  root to: "homes#top"
  get "home/about" => "homes#about"

  scope module: :public do
    get 'customers/my_page' =>"customers#show"
    get 'customers/edit'
    get 'customers/confirm' =>"customers#confirm"
    
    get '' => 'homes#top'
    get 'about' => 'homes#about', as: 'about'
    resources :cart_items, only:[:index, :update, :create, :destroy]
    delete 'cart_items/destroy_all' => "cart_items#destroy_all"
    resources :items
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

Rails.application.routes.draw do

  devise_for :admins ,controllers:{
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  devise_for :customers,controllers: {
    sessions: 'public/sessions',
    passwords: 'public/passwords',
    registrations: 'public/registrations'
  }

    root to: 'public/homes#top'
    get 'about'=>'public/homes#about'

    scope module: :public do
    resources :items, only: [:index,:show]
    resources :cart_items, only:[:index,:update,:destroy,:create]
    resources :orders,only:[:new,:create,:index,:show]
    resources :addresses
    end

  namespace :admin do
    resources :genres
    resources :customers
  end

    get 'customers/my_page' =>'public/customers#show'
    get 'customers/information/edit'=>'public/customers#edit'
    patch 'customers/information'=>'public/customers#update'
    get 'customers/unsubscript'=>'public/customers#unsubscript'
    patch 'customers/withdraw'=>'public/customers#withdraw'

    delete 'cart_items/destroy_all'=>'public/cart_items#destroy_all'

    post 'orders/confirm'=>'public/orders#confirm'
    get 'orders/complete'=>'public/orders#complete'

end

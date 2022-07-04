Rails.application.routes.draw do

  devise_for :customers

    root to: 'public/homes#top'
    get 'about'=>'public/homes#about'
    resources :items, only: [:index,:show]
    resources :cart_items, only:[:index,:update,:destroy,:create]
    resources :orders,only:[:new,:create,:index,:show]
    resources :addresses

    get 'customers/my_page' =>'public/customers#show'
    get 'customers/information/edit'=>'public/customers#edit'
    patch 'customers/information'=>'public/customers#update'
    get 'customers/unsubscript'=>'public/customers#unsubscript'
    patch 'customers/withdraw'=>'public/customers#withdraw'

    delete 'cart_items/destroy_all'=>'public/cart_items#destroy_all'

    post 'orders/confirm'=>'public/orders#confirm'
    get 'orders/complete'=>'public/orders#complete'

end

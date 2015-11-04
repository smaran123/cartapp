Rails.application.routes.draw do
  devise_for :users
  resources :products
  get 'cart/index'
get '/cart' => "cart#index"
get '/cart/clear' => "cart#clearcart"
get "/cart/:id" => "cart#add"
  get 'page/home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'

 root "page#home"
end

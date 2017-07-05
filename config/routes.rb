Rails.application.routes.draw do
  get 'messages/index'

  resources :rooms do
    resources :messages
  end
  root 'home#index'
  post 'login', to: 'home#login'
  delete 'logout', to: 'home#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

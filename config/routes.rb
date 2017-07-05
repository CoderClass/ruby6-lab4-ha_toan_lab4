Rails.application.routes.draw do
  get 'messages/index'

  resources :rooms do
    resources :messages
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

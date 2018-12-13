Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  resources :albums do
  	get 'my_albums', on: :collection
  end
  resources :photos
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

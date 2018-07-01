Rails.application.routes.draw do
  resources :collections
  root 'welcome#index'

  get 'collections' => 'gardens#collections'
  get 'plants' => 'plants#index'
  post 'plants' => 'plants#create'


  # resourceful routing:
  resources :gardens
  resources :plants
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

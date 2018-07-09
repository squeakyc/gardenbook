Rails.application.routes.draw do

  resources :posts
  root 'welcome#index'

  get 'collections' => 'gardens#collections'
  get 'plants' => 'plants#index'
  post 'plants' => 'plants#create'

  get 'show_user' => 'community#show_user'
  get 'now_following' => 'community#now_following'
  get 'unfollow' => 'community#unfollow'

  # get 'community/feed'
  # get 'community/show_user'
  # get 'community/now_following'
  # get 'community/unfollow'


  # resourceful routing:
  resources :tasks
  resources :collections
  resources :gardens
  resources :plants
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

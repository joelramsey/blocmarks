Rails.application.routes.draw do
  
  devise_for :users
  resources :topics
  resources :users, only: [:update, :show, :index]
  post :incoming, to: 'incoming#create'
  
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end

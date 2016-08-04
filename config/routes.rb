Rails.application.routes.draw do
  devise_for :users
  root :to => 'cycle#index'
  get 'cycle' => 'cycle#index'
  get 'cycle/new' => 'cycle#new'
  get 'cycle/:id' => 'cycle#show'
  post 'cycle' => 'cycle#create'
end
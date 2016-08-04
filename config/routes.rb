Rails.application.routes.draw do
  devise_for :users
  root :to => 'cycle#index'
  get 'cycle' => 'cycle#index'
  get 'cycle/new' => 'cycle#new'
  get 'cycle/:id' => 'cycle#show'
  post 'cycle' => 'cycle#create'
  delete 'cycle/:id' => 'cycle#destroy'
  patch 'cycle/:id' => 'cycle#update'
  get 'cycle/:id/edit' => 'cycle#edit'
  get 'users/:id' => 'users#show'
end
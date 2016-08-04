Rails.application.routes.draw do
  root :to => 'cycle#index'
  get 'cycle' => 'cycle#index'
  get 'cycle/new' => 'cycle#new'
  get 'cycle/:id' => 'cycle#show'
end
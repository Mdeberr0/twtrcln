Rails.application.routes.draw do
	
  get 'likes/create'

  devise_for :users
  
  resources :tweets do
  	resources :like
  end
  
  resources :relationships
  
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles'  => 'profiles#index'
  
  root  "tweets#index"
  
end

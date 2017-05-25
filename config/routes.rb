Rails.application.routes.draw do
	
  get 'likes/create'

  devise_for :users
  
  resources :tweets do
  	resource :like
  end
  
  resources :relationships
  
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles'  => 'profiles#index'
  get 'feed' => 'profiles#feed'
  
  root  "tweets#index"
  
end

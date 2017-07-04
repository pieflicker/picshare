Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
	get 'upload', to: 'images#new'
  get 'my-pictures', to: 'images#my_images'
  get 'galleries', to: 'images#gallery'
  get 'galleries/:id', to: 'images#gallery_view'
	#post 'upload', to: 'images#create'
  resources :users
  resources :sessions
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
root 'welcome#index'


end

Rails.application.routes.draw do
  get 'users/new', to: 'users#new', as: 'signup'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
root 'welcome#index'


end

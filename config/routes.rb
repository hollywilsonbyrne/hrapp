Rails.application.routes.draw do
  resources :departments

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  resources :holidays

 root to: 'welcome#index'
 
end

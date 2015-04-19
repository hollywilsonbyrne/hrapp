Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  resources :holidays

 root to: 'welcome#index'
 
end

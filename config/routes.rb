Rails.application.routes.draw do
  resources :regions
  get 'welcome/index'
  resources :flags

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

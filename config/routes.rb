Rails.application.routes.draw do
  resources :champion_views
  devise_for :users

  root 'welcome#index'


  get 'welcome/champions'

  get 'welcome/favorites'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

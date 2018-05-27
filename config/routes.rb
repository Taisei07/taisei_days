Rails.application.routes.draw do
  root 'nappis#index'
  resources :nappis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

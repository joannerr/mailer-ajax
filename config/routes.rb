Rails.application.routes.draw do
  resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'emails#index'
  get 'emails/:id', to: 'emails#show'
end

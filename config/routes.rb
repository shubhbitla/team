Rails.application.routes.draw do
 
  get 'countries/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root :to => "countries#index"
  resources :teams
  resources :countries

end

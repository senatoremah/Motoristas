Rails.application.routes.draw do
  resources :motorista
  
  resources :mapas

  root :to => "home#index"

end

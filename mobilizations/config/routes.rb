Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  resource :usuario
  resource :meta
  resource :realizacao_meta
  resource :voto
  root :to => "home#index"
end

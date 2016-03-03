Rails.application.routes.draw do
  root 'landings#index'

  resources :landings
  get 'landings/create'

end

Rails.application.routes.draw do
  get 'landings/create'

  resources :landings
root 'landings#index'

end

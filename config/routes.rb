Rails.application.routes.draw do
  root 'leads#index'

  resources :leads
  get 'leads/create'

end

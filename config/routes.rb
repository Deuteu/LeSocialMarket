Rails.application.routes.draw do
  root 'pages#landing'

  get 'index' => 'leads#index'

  devise_for :admins
  devise_scope :admin do
    get 'logout' => 'devise/sessions#destroy'
  end
  resource :admin, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end

  post  'leads' =>  'leads#create'
end

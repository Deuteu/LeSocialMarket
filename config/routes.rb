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

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/shop/'
end

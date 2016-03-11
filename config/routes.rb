Rails.application.routes.draw do
  devise_for :admins
  root 'pages#landing'

  post  'leads' =>  'leads#create'
end

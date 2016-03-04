Rails.application.routes.draw do
  root 'pages#landing'

  post  'leads' =>  'leads#create'
end

Rails.application.routes.draw do
  get 'pages/welcome'

  root to: 'pages#welcome'
end

Rails.application.routes.draw do
  devise_for :learners
  devise_for :teachers
  
  authenticated :teacher do
    root to: "teachers/dashboard#show", as: :teacher_root
  end

  authenticated :learner do
    root to: "learners/dashboard#show", as: :learner_root
  end
  
  namespace :teachers do
    resource :dashboard, only: :show
    resources :courses
  end

  namespace :learners do
    resource :dashboard, only: :show
  end

  get "pages/welcome"

  root to: 'pages#welcome'
end

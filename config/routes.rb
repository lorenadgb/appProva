AppProva::Application.routes.draw do

  devise_for :users
  root 'pages#home'
  get  'pages/home', to: 'pages#home'

  resources :questions, except: [ :index ]
  resources :answers
  resources :revisions, only: [ :new, :create ]
end

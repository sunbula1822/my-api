Rails.application.routes.draw do
  resources :superheros

  root 'pages#home'
  use_doorkeeper
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  draw :api

end

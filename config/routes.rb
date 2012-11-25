ClinicApp::Application.routes.draw do
  resources :patients
  resources :sessions
  resources :schedules
  resources :appointments
  resources :doctors

  root :to => 'pages#home'

  match '/home', :to => 'pages#home'
  match '/about', :to => 'pages#about'
  match '/contact', :to => 'pages#contact'
  match '/privacy', :to => 'pages#privacy'
  match '/signup', :to => 'patients#new'
  match '/login', :to => 'sessions#new'
  match '/logout', :to => 'sessions#destroy'
end

Rails.application.routes.draw do
	root 'articles#index'
  devise_for :users #:controllers => {:registrations => "users/registrations", sessions: 'users/sessions'}
  resources :articles
  resources :comments
  resources :welcome
  
end

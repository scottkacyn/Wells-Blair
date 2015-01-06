Rails.application.routes.draw do

  resources :homepage_headlines

  resources :headlines

  resources :specialties

  resources :about_bullets

  resources :partners

  resources :testimonials

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :jobs

  get '/'               => 'pages#index'
  get '/clients'        => 'pages#client_solutions'
  get '/contact'        => 'pages#contact'
  get '/opportunities'  => 'pages#tax_opportunities'
  get '/about'          => 'pages#about'
  get '/services'       => 'pages#services'

  root 'pages#index'
end

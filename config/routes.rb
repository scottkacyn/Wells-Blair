Rails.application.routes.draw do

  resources :applicants

  resources :strategies

  resources :homepage_headlines

  resources :headlines

  resources :specialties

  resources :about_bullets

  resources :partners

  resources :testimonials

  resources :inquiries, only: [:new, :create]
  get '/inquiry-success'  => 'inquiries#success'
  get '/inquiry-error'    => 'inquiries#error'

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

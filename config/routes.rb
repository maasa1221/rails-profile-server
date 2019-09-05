Rails.application.routes.draw do
  get 'login/login'
  resources :profiles
  post 'login/login'
end
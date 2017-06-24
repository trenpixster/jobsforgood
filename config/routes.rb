Rails.application.routes.draw do
  devise_for :companies
  devise_for :seekers
  root to: 'pages#index'
end

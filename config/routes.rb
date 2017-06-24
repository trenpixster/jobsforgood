Rails.application.routes.draw do
  devise_for :seekers
  root to: 'pages#index'
end

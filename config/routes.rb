Rails.application.routes.draw do

  devise_for :associations, path: 'associations', controllers: {
    passwords:     'associations/passwords',
    registrations: 'associations/registrations',
    sessions:      'associations/sessions',
  }

  resource :association, only: [:show]

  devise_for :companies, path: 'companies', controllers: {
    passwords:     'companies/passwords',
    registrations: 'companies/registrations',
    sessions:      'companies/sessions',
  }

  resource :company, only: [:show]

  resources :companies do
    resources :jobs, only: [:show, :index]
  end

  resources :jobs

  root to: 'pages#index'
end

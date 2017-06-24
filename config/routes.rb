Rails.application.routes.draw do

  devise_for :institutions, path: 'institutions', controllers: {
    passwords:     'institutions/passwords',
    registrations: 'institutions/registrations',
    sessions:      'institutions/sessions',
  }

  resource :institution, only: [:show] do
    resources :seekers
  end

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

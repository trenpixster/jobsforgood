Rails.application.routes.draw do
  devise_for :seekers, path: 'seekers', controllers: {
    passwords:     'seekers/passwords',
    registrations: 'seekers/registrations',
    sessions:      'seekers/sessions',
  }

  devise_for :companies, path: 'companies', controllers: {
    passwords:     'companies/passwords',
    registrations: 'companies/registrations',
    sessions:      'companies/sessions',
  }

  root to: 'pages#index'
end

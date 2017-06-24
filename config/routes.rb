Rails.application.routes.draw do

  devise_for :associations, path: 'associations', controllers: {
    passwords:     'associations/passwords',
    registrations: 'associations/registrations',
    sessions:      'associations/sessions',
  }

  devise_for :companies, path: 'companies', controllers: {
    passwords:     'companies/passwords',
    registrations: 'companies/registrations',
    sessions:      'companies/sessions',
  }

  root to: 'pages#index'
end

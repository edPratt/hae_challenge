Rails.application.routes.draw do
  root 'welcome#index'

  resources :invoice
  resources :time_entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs
end

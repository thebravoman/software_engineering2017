Rails.application.routes.draw do
  resources :developer_projects
  resources :developers
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
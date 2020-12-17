Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #building need index, show, edit, update
  get 'buildings', to: 'buildings#index', as: 'buildings'
  # get 'buildings/new', to: 'buildings#new', as: 'new_building'
  get 'buildings/:id', to: 'buildings#show', as: 'building'
  get 'buildings/:id/edit', to: 'buildings#edit', as: 'edit_building'
  # post 'buildings', to: 'buildings#create'
  patch 'buildings/:id', to: 'buildings#update'

  #company need: new, create, index, show, delete
  get 'companies', to: 'companies#index', as: 'companies'
  get 'companies/new', to: 'companies#new', as: 'new_companies'
  get 'companies/:id', to: 'companies#show', as: 'company'
  # get 'companies/:id/edit', to: 'companies#edit', as: 'edit_company'
  post 'companies', to: 'companies#create'
  # patch 'companies/:id', to: 'companies#update'
  # delete 'companies/:id', to: 'companies#destroy'

  # get 'employees', to: 'employees#index', as: 'employees'
  get 'employees/new', to: 'employees#new', as: 'add_employee'
  get 'employees/:id', to:'employees#show', as: 'employee'
  # get 'employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  post 'employees/', to: 'employees#create'
  # patch 'employees/:id', to: 'employee#update'
  delete 'employee/:id', to: 'employees#destroy', as: 'delete_employee'

  # get 'offices', to: 'offices#index', as: 'offices'
  # get 'offices/new', to: 'offices#new', as: 'new_office'
  get 'offices/:id', to: 'offices#show', as: 'office'
  # get 'offices/:id/edit', to: 'offices#edit', as: 'edit_office'
  # post 'offices', to: 'offices#create'
  # patch 'offices/:id', to: 'offices#update'
  # delete 'offices/:id', to: 'offices#destroy', as: 'delete_office'

end

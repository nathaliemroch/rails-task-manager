Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'tasks/new', to: 'tasks#new'

  get 'tasks', to: 'tasks#index'
  #read one
  get 'tasks/:id', to: 'tasks#show', as: :task_show

  #create
  post 'tasks', to: 'tasks#create'

  #update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update', as: :task

  #delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_delete

end

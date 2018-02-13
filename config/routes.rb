Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# List the tasks, INDEX
  get '/tasks', to: 'tasks#index'

  # Create a new task, is a 2 step job
  get 'tasks/new', to: 'tasks#new', as: "new"
  post '/tasks', to: 'tasks#create'

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete a task
  # get 'tasks/:id/delete', to 'tasks#delete'
  delete 'tasks/:id/delete', to: 'tasks#destroy' , as: 'delete'

  # Show one specific task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

end

Rails.application.routes.draw do
  post "tasks", to: "tasks#create", as: :tasks
  get "tasks/new", to: "tasks#new", as: :new_tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index",  as: :index
  get "tasks/:id", to: "tasks#show", as: :task
  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end

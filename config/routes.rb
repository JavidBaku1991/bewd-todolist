Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homepage#index'

  # Add routes below this line

  # Add routes below above line

  # Redirect all other paths to index page, which will be taken over by AngularJS
  post 'tasks' => 'tasks#create'

  get '*path' => 'homepage#index'
    get 'tasks' => 'tasks#index'
    delete 'tasks/:id' => 'tasks#destroy'
     put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
     put '/tasks/:id/mark_active'   => 'tasks#mark_active'


end

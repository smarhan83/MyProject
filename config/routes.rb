Rails.application.routes.draw do
  resources :students
  root 'topics#index'
  resources :mybudgets
  resources :departments
  resources :emps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  resources :activities

  # get 'activities'
  # get 'activities/:id'
  # get 'activites/new'
  # get 'activites/create'
  # get 'activites/edit'
  # get 'activites/update'
  # get 'activites/destroy'

  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

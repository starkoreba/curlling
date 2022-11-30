Rails.application.routes.draw do

  resources :activities do
    resources :participations, only: :show
  end

  get 'activities/index'
  get 'activities/show'
  get 'activites/index'
  get 'activites/new'
  get 'activites/create'
  get 'activites/edit'
  get 'activites/update'
  get 'activites/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

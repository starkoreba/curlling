Rails.application.routes.draw do
  devise_for :users

  root to: "activities#index"
  resources :activities, except: :index do
    resources :participations, except: :destroy do
      resources :private_messages, only: [:show, :create, :new]
    end
  end

  resources :participations, only: :destroy
  get 'chatroom', to: "chatrooms#show"

  resources :users, only: %i[show destroy]
  get 'infos', to: "activities#infos"


  # /activities/:id/user/:id/badge/:id/user_badge#create

get 'activities/:id/participations/:id/user_badges/new', to: "user_badges#new"
# POST 'activities/:id/user_badges'

end

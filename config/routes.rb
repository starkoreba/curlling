Rails.application.routes.draw do
  devise_for :users

  root to: "activities#index"
  resources :activities, except: :index do
    resources :participations, except: :destroy do
      resources :private_messages, only: [:show, :create, :new]
    end
  end

  resources :participations, only: :destroy
  get 'chatroom', to: "chatroom#show"

  resources :users, only: %i[show destroy]
  get 'infos', to: "activities#infos"
end

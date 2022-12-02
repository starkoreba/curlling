Rails.application.routes.draw do
  devise_for :users

  root to: "activities#index"
  resources :activities, except: :index do
    resources :participations, except: :destroy do
      resources :private_messages, only: :show
    end

  end
  resources :participations, only: :destroy

  resources :users, only: %i[show destroy]
  get 'infos', to: "activities#infos"
end

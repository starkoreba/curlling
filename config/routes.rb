Rails.application.routes.draw do
  devise_for :users

  root to: "activities#index"
  resources :activities, except: :index do
    resources :participations, except: :destroy
  end
  resources :participations, only: :destroy

  resources :users, only: [:show, :destroy]
end

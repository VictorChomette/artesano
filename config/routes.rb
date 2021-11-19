Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :interventions, only: [:index, :show, :edit, :update]

  resources :services do
    resources :interventions, only: [:new, :create]
  end
  get '/interventions/:id/accept', to: "interventions#accept", as: :accept
  get '/interventions/:id/decline', to: "interventions#decline", as: :reject

end

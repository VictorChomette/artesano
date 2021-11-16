Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services, only: [:index]
end

# /services	GET	services	index
# /services/:id	GET	services	show
# /services/new	GET	services	new
# /services	POST	services	create
# /services	GET	services	edit
# /services	PATCH	services	update
# /services	GET	services	destroy
# /interventions/:id/edit	GET	interventions	edit
# /interventions/:id	PATCH	interventions	update
# /interventions/new	GET	interventions	new
# /interventions	POST	interventions	create
# /users	GET	users	new/create/show
# /myinterventions	GET	interventions	myinterventions

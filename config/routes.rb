Rails.application.routes.draw do
  get '/jobs/jrp'
  get '/jobs/jdp/:id', to: 'jobs#jdp'
  resources :jobs do
    resources :responsibilities
    resources :skills
  end
  root 'jobs#jrp'
end

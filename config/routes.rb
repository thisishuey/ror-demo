Rails.application.routes.draw do
  get '/jobs/jrp'
  get '/jobs/jdp/:id', to: 'jobs#jdp'
  resources :jobs
  root 'jobs#jrp'
end

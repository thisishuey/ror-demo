Rails.application.routes.draw do
  get 'jobs/jrp'
  resources :jobs
  root 'jobs#jrp'
end

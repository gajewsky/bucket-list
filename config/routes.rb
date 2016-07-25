Rails.application.routes.draw do
  root 'root#index'
  resources :challanges
  resources :milestones
  resources :categories
end

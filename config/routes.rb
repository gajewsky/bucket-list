Rails.application.routes.draw do
  root 'root#index'
  scope module: 'achievements' do
    resources :challanges
    resources :milestones
    resources :categories
  end

  resources :authorizations, only: [:create]
end

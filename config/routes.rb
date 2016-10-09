Rails.application.routes.draw do
  scope module: 'achievements' do
    resources :challanges
    resources :milestones
    resources :categories
  end
end

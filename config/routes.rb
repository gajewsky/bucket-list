Rails.application.routes.draw do
  root 'challanges#index'
  resources :challanges
  resources :milestones
  resources :categories
  namespace 'metrics' do
    resources :movies do
      collection do
        get :import
      end
    end
    resources :books do
      collection do
        get :import
      end
    end
    resources :beers do
      collection do
        get :import
      end
    end
    resources :activities do
      collection do
        get :import
      end
    end
  end
end

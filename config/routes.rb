Rails.application.routes.draw do
  get 'images/create'
  devise_for :users
  root to: 'events#index'

  resources :events do
      resources :images, only: [:create]
  end
  
  scope 'superadmin', module:'admin', as: 'admin' do
   resources :events
  end

  resources :users
  resources :attendances
  resources :charges
end

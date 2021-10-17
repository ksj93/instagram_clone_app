Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show,:edit,:update]
  resources :feeds do
    collection do
      post :confirm
    end
  end
end

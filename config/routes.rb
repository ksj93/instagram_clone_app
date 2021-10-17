Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy,:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show,:edit,:update]
  resources :feeds do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/mailbox" if Rails.env.development?
end

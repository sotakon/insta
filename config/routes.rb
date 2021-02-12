Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'sessions/new'
  get '/instas', to: 'instas#index' #追記する
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :favorites
  resources :sessions, only: [:new, :create, :destroy]
end

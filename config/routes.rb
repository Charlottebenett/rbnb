Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show]
  resources :draws do
    resources :drawing_comments, only: [:create]
  end
  resources :drawing_comments, only: [:destroy]


  get '/shop' => 'draws#shop'
end

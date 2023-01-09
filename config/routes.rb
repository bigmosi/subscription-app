Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :publications, only: [:index, :show]

  namespace :admin do
    resources :publications
  end

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end

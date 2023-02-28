Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :listings, only: %i[index new create show] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show]
end

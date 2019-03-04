Rails.application.routes.draw do
  resources :genres
  resources :movies
    
  root to: "movies#index"
end

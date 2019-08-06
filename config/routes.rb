Rails.application.routes.draw do
  root to: 'albums#index'
  resources :songs, only: [:index]
  resources :songs, except: [:destroy]
  resources :albums do
   resources :songs
 end
end

Rails.application.routes.draw do
  resources :classifications
  resources :bows
  resources :firearms
  root 'application#hello'
end

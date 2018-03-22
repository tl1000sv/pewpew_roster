Rails.application.routes.draw do
  resources :bows
  resources :firearms
  root 'application#hello'
end

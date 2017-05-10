Rails.application.routes.draw do
  resources :main, only: [:index]
  get 'main/contact_info'
  get 'main/about'
end

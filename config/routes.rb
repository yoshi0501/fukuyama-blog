Rails.application.routes.draw do
  root 'dailyreports#index'
  resources :dailyreports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

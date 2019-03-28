Rails.application.routes.draw do
  get 'api/availablestarttime/:date', to: 'api#availablestarttime'
  resources :appointments
  root to: "appointments#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

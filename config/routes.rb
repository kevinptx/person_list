Rails.application.routes.draw do
  root "static_people#home"

  get "/home", to: "static_people#home"

  resources :people
end

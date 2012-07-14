Cultivate::Application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  resource :company

  root to: "main#index"
end

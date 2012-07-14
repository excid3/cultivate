Cultivate::Application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  root to: "main#index"
end

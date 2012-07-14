Cultivate::Application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  resource :company

  authenticated :user do
    root to: "companies#show"
  end
  root to: "main#index"
end

Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show'

  root to: "users#index"
end

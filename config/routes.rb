Ibikealot::Application.routes.draw do
  devise_for :users

  resources :distances

  match ':controller(/:action(/:id))'

  root to: 'dashboard#index'
end

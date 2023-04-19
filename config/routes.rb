Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  as :user do
    delete 'logout', to: 'users/sessions#destroy'
  end
  resources :members
  get 'home/index'
  get 'home/about'
  get 'home/upcoming'
  root 'home#index'
end


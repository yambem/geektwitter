Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :brands
  resources :products
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  get 'top/top' => 'top#top'
  root 'posts#index'
end

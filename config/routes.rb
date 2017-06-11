Rails.application.routes.draw do
  post '/login' => 'sessions#create'

  resources :users, only: [:index, :show]

  resources :kairos_profile, only: :create

  resources :user_likes, path: 'likes', only: [:index, :create], shallow: true do
    resources :reaction_data, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

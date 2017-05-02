Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in:"login", sign_out:"logout"} #customise routes

  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
end

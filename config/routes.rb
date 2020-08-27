Rails.application.routes.draw do
  root to: 'pages#home'
  resources :cocktails do
    resources :dose, only: [:new, :create]
  end
   resources :dose, except: [:new, :create]
end

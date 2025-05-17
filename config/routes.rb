Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :books
  resources :expenses

  # root パスを定義（例として books#index をトップにする場合）
  root "books#index"
end
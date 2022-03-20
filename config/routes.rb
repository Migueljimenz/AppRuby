Rails.application.routes.draw do
  get 'programas/index'
  devise_for :users
  root to: "dashboard#index"

  resources :areas do
    resources :programas, module: :areas

  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
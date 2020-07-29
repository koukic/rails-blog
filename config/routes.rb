Rails.application.routes.draw do
  scope module: 'authors' do
    resources :posts
  end
  devise_for :authors
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # devise_for :authors, controllers: {
  #   registrations: 'registrations'
  # }
  resource :session, only: %i(new create destroy)
end

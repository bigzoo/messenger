Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profile, only: :index
  # Uncomment below line to use subdomains instead of branches
  # get '', to: 'users#show', constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www' }
  root 'main#index'
  resources :messages, only: :create
  get '/:username', to: 'users#show'
  # resources :users, only: :show
end

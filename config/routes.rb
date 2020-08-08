Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'documents#index'
  get '/about'  => 'static#about'
  get '/privacy_policy'  => 'static#privacy_policy'
  get '/terms'  => 'static#terms'
  get '/operator'  => 'static#operator'
  resource :ogp_images, only: [:show]
  resources :documents, only: [:index, :show, :new, :create]
end

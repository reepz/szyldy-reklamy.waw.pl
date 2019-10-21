Rails.application.routes.draw do
  resources :projects
  devise_for :users
  root "projects#index"

  get '/kontakt/', to: "static_pages#contact"
  get '/o_nas/', to: "projects#index"
  get '/nasi_klienci/', to: "static_pages#our_clients"
  get '/oferta/', to: "static_pages#offer"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

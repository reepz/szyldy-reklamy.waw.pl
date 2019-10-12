Rails.application.routes.draw do
  root "static_pages#index"

  get '/kontakt/', to: "static_pages#contact"
  get '/o_nas/', to: "static_pages#about"
  get '/nasi_klienci/', to: "static_pages#our_clients"
  get '/oferta/', to: "static_pages#offer"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

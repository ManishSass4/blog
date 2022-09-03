Rails.application.routes.draw do
  resources :customers, :counsellors, :appoints, :feedbacks, :advises
  post "/sign_in", to: "authentications#login"
  post "/counsellor_sign_in", to: "authenticationcounsellors#login"
  get "search_counsellor", to: "customers#search"
  get "/counsellor_is_available", to: "customers#is_available"
end

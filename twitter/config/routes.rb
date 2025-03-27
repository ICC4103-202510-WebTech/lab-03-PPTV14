Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  post "/submit_contact", to: "pages#submit_contact"
end

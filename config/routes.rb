Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "flats#index", as: :flats
  # root to: "flats#index"
  get "/flats/:id", to: "flats#show", as: :flat
end

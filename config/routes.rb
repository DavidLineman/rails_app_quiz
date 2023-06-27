Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/jobs", to: "jobs#index"
  get "/jobs/:id", to: "jobs#show"
  post "/jobs", to: "jobs#create"
end

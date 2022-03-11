Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # make a web request to see the first recipe
  # ALL RECIPES
  get "/recipes" => "recipes#index"
  # ONE RECIPE
  get "/recipes/:id" => "recipes#show"
end

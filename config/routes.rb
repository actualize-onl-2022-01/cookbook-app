Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # make a web request to see the first recipe
  get "/first-recipe" => "recipes#initial_recipe"
end

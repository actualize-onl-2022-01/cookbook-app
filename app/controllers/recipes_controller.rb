class RecipesController < ApplicationController
  def initial_recipe
    the_recipe = Recipe.first
    render json: the_recipe.as_json
  end
end

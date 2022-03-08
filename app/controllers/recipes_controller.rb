class RecipesController < ApplicationController
  def initial_recipe
    the_recipe = Recipe.third
    render json: the_recipe.as_json
  end

  def all
    recipes = Recipe.all
    render json: recipes.as_json
  end
end

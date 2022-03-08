class RecipesController < ApplicationController
  def initial_recipe
    the_recipe = Recipe.first
    render json: {
      id: the_recipe.id, 
      title: the_recipe.title, 
      ingredients: the_recipe.ingredients, 
      directions: the_recipe.directions, 
      prep_time: the_recipe.prep_time, 
      image_url: the_recipe.image_url, 
      chef: the_recipe.chef
    }
  end
end

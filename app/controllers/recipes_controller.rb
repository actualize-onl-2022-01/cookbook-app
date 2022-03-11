class RecipesController < ApplicationController
  def index
    # show ALL the recipes
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def show
    the_id = params[:id]
    recipe = Recipe.find_by(id: the_id)
    render json: recipe.as_json
  end

  def create
    # make a new recipe
    # chef
    # title
    # ingredients
    # directions
    # prep_time
    # image_url
    recipe = Recipe.new(
      chef: params[:input_chef],
      title: params[:input_title],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      prep_time: params[:input_prep_time],
      image_url: params[:input_image_url],
    )

    recipe.save

    render json: recipe.as_json
  end

  def update
    # update a recipe
    recipe = Recipe.find_by(id: params[:id])
    
    recipe.title = params[:input_title] || recipe.title
    recipe.ingredients = params[:input_ingredients] || recipe.ingredients
    recipe.prep_time = params[:input_prep_time] || recipe.prep_time
    recipe.image_url = params[:input_image_url] || recipe.image_url
    recipe.chef = params[:input_chef] || recipe.chef
    recipe.directions = params[:input_directions] || recipe.directions
    recipe.save

    render json: recipe.as_json
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: {message: "just deleted a recipe"}
  end
end

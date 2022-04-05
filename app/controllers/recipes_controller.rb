class RecipesController < ApplicationController
  def index
    # show ALL the recipes
    # pp "current_user"
    # pp current_user
    # pp "/current_user"
    @recipes = Recipe.all
    render template: "recipes/index"
  end

  def show
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    render template: "recipes/show"
  end
  # MVC

  def create
    # make a new recipe
    # chef
    # title
    # ingredients
    # directions
    # prep_time
    # image_url
    @recipe = Recipe.new(
      chef: params[:input_chef],
      title: params[:input_title],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      prep_time: params[:input_prep_time],
      image_url: params[:input_image_url],
      user_id: current_user.id
    )

    @recipe.save!

    render template: "recipes/show"
  end

  def update
    # update a recipe
    @recipe = Recipe.find_by(id: params[:id])
    
    @recipe.title = params[:input_title] || @recipe.title
    @recipe.ingredients = params[:input_ingredients] || @recipe.ingredients
    @recipe.prep_time = params[:input_prep_time] || @recipe.prep_time
    @recipe.image_url = params[:input_image_url] || @recipe.image_url
    @recipe.chef = params[:input_chef] || @recipe.chef
    @recipe.directions = params[:input_directions] || @recipe.directions
    @recipe.save

    render template: "recipes/show"
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: {message: "just deleted a recipe"}
  end
end

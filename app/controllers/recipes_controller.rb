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
      chef: params[:chef],
      title: params[:title],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: current_user.id
    )

    @recipe.save!

    render template: "recipes/show"
  end

  def update
    # update a recipe
    @recipe = Recipe.find_by(id: params[:id])
    
    @recipe.title = params[:title] || @recipe.title
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.image_url = params[:image_url] || @recipe.image_url
    @recipe.chef = params[:chef] || @recipe.chef
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.user_id = current_user.id || @recipe.user_id
    @recipe.save

    render template: "recipes/show"
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: {message: "just deleted a recipe"}
  end
end

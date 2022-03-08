class RecipesController < ApplicationController
  def initial_recipe
    render json: {message: "here is the first recipe"}
  end
end

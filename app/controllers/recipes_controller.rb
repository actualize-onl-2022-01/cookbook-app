class RecipesController < ApplicationController
  def initial_recipe
    the_recipe = Recipe.first
    render json: the_recipe.as_json
  end

  def second
    # 100.times do
    #   contact = {
    #     first_name: Faker::Name.first_name,
    #     last_name: Faker::Name.last_name,
    #     email: Faker::Internet.email,
    #     phone_number: Faker::PhoneNumber.phone_number,
    #   }

    #   p contact
    # end

    the_recipe = Recipe.second
    render json: the_recipe.as_json
  end

  def all
    recipes = Recipe.all
    render json: recipes.as_json
  end
end

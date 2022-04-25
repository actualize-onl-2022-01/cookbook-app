require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "should return all recipes in an array" do
      user = User.new(
        email: "brian@test.com",
        password: "password",
        name: "brian"
      )
      user.save      
      Recipe.create!(
        title: "tacos",
        chef: "brian",
        ingredients: "tortillas and meat and lettuce",
        directions: "add the ingredients together",
        prep_time: 10,        
        image_url: "http://tacos.com/taco",
        user_id: user.id,        
      )
      Recipe.create!(
        title: "burritos",
        chef: "brian",
        ingredients: "tortillas and meat and lettuce",
        directions: "add the ingredients together",
        prep_time: 10,        
        image_url: "http://burritos.com/burrito",
        user_id: user.id,        
      )
      
      # response =  HTTP.get("http://localhost:3000/recipes.json")
      get "/recipes.json"
      recipes = JSON.parse(response.body)
      # p recipes      
      expect(recipes.length).to eq(2)
      expect(response).to have_http_status(200)
    end
  end
end

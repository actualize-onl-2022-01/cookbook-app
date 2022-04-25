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
  describe "GET /recipes/:id" do
    it 'should return one recipe' do
      user = User.new(
        email: "mary@test.com",
        password: "password",
        name: "mary"
      )
      user.save! 

      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      
      # make a new user
      # make a new recipe
      recipe = Recipe.create!(
        title: "enchiladas",
        chef: "brian",
        ingredients: "tortillas and meat and lettuce and sauce",
        directions: "add the ingredients together",
        prep_time: 14,        
        image_url: "http://enchiladas.com/enchilada",
        user_id: user.id,    
      )
      # make a web request to see the recipe
      get "/recipes/#{recipe.id}.json", headers: {"Authorization" => "Bearer #{jwt}"}
      recipe = JSON.parse(response.body)
      # p recipe
      # test out the data in the recipe
      expect(recipe['title']).to eq('enchiladas')
      expect(recipe['chef']).to eq('brian')
      expect(recipe['ingredients']).to eq('tortillas and meat and lettuce and sauce')
      expect(recipe['directions']).to eq('add the ingredients together')
      expect(recipe['prep_time']).to eq(14)
      expect(recipe['image_url']).to eq('http://enchiladas.com/enchilada')
      expect(recipe['user_id']).to eq(user.id)
      expect(response).to have_http_status(200)
    end
  end


  describe "POST /recipes" do
    it "creates a recipe" do
      user = User.new(email: "larry@test.com", password: "password", name: "larry")
      user.save! 

      jwt = JWT.encode({user_id: user.id, exp: 24.hours.from_now.to_i},Rails.application.credentials.fetch(:secret_key_base),"HS256")
      
      
      post "/recipes.json", params: {
        title: "New title",
        chef: "New chef",
        prep_time: "100",
        ingredients: "New ingredients",
        directions: "New directions",
        image_url: "New image_url",
      }, headers: {"Authorization" => "Bearer #{jwt}"}
      recipe = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq("New title")
    end

    it 'returns \'unauthorized\' if user is not logged in' do       
      post "/recipes.json"
      empty_hash = JSON.parse(response.body)

      expect(response).to have_http_status(401)
      expect(empty_hash).to eq({})
    end
  end
end
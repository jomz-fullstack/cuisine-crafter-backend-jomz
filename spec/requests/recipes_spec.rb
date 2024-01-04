require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /index" do
    it "gets a list of all of the recipes" do 
      Recipe.create(
        name: "steak",
        image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
        instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
        protein:"steak",
        ingredients:"steak, oil, butter",
        nutrition:"30 grams protein"
      )
      get '/recipes'
      recipes = JSON.parse(response.body)

      expect(response).to have_http_status(200)
    end
  end
end

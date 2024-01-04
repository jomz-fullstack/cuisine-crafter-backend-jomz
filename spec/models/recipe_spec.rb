require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "should validate name" do 
    recipes = Recipe.create(
    image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
    instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
    protein:"steak",
    ingredients:"steak, oil, butter",
    nutrition:"30 grams protein")
    expect(recipes.errors[:name]).to_not be_empty
  end
  it "should validate image" do
    recipes = Recipe.create(
    name: "steak",
    instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
    protein:"steak",
    ingredients:"steak, oil, butter",
    nutrition:"30 grams protein")
    expect(recipes.errors[:image]).to_not be_empty
  end
  it "should validate instructions" do 
    recipes = Recipe.create(
      name: "steak",
    image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
    protein:"steak",
    ingredients:"steak, oil, butter",
    nutrition:"30 grams protein")
    expect(recipes.errors[:instructions]).to_not be_empty
  end
  it "should validate protein" do 
    recipes = Recipe.create(
      name: "steak",
    image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
    instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
    ingredients:"steak, oil, butter",
    nutrition:"30 grams protein")
    expect(recipes.errors[:protein]).to_not be_empty
  end
  it "should validate ingredients" do 
    recipes = Recipe.create(
      name: "steak",
    image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
    instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
    protein: "steak",
    nutrition:"30 grams protein")
    expect(recipes.errors[:ingredients]).to_not be_empty
  end
  it "should validate nutrition" do 
    recipes = Recipe.create(
      name: "steak",
    image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
    instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
    protein: "steak",
    ingredients:"steak, oil, butter")
    expect(recipes.errors[:nutrition]).to_not be_empty
  end
end

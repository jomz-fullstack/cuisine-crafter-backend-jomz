class RecipesController < ApplicationController
    def index
      recipes = Recipe.all 
      render json: recipes
    end
    def show
      recipes = Recipes.find(params[:id])
    end
end

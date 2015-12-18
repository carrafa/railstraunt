class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    redirect_to dishes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:dish_id, :ingredient_id)
  end

end

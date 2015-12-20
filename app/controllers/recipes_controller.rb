class RecipesController < ApplicationController

  before_action :authenticate!

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    admin_authenticate!
    Recipe.create(recipe_params)
    redirect_to dish_path(params[:format])
  end

  def destroy
    admin_authenticate!
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to dish_path(params[:format])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:dish_id, :ingredient_id)
  end

end

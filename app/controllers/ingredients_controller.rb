class IngredientsController < ApplicationController

  before_action :authenticate!

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    admin_authenticate!
    Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    admin_authenticate!
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :vegetarian)
  end

end

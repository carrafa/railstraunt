class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    Dish.create(dish_params)
    redirect_to dishes_path
  end

  def show
    @new_recipe = Recipe.new
    @recipes = Recipe.where(dish_id: params[:id] )
    @dish = Dish.find(params[:id])
  end

  def destroy
    dish = Dish.find(params[:id])
    dish.destroy
    redirect_to dishes_path
  end


  private

  def dish_params
    params.require(:dish).permit(:name, :course, :cost, :price, :description)
  end

end

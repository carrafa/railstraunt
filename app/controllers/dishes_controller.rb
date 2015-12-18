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
    @recipe = Recipe.new
    @dish = Dish.find(params[:id])
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :course, :cost, :price, :description)
  end

end

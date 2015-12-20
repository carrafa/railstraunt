class Dish < ActiveRecord::Base

  has_many :recipes
  has_many :parties, through: :orders
  has_many :ingredients, through: :recipes

  def check_vegetarian_level

    

  end


end

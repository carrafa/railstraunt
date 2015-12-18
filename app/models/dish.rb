class Dish < ActiveRecord::Base

  has_many :parties, through: :orders
  has_many :ingredients, through: :recipes

end

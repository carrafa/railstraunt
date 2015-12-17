class Dish < ActiveRecord::Base

  has_many :guests, through: :orders
  has_many :ingredients, through: :recipes

end

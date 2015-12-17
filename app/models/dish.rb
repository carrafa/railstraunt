class Dish < ActiveRecord::Base

  has_many :seats, through: :orders
  has_many :ingredients, through: :recipes

end

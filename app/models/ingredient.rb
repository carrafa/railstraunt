class Ingredient < ActiveRecord::Base

  has_many :dishes, through: :recipes

end

class Recipe < ActiveRecord::Base

  belongs_to :dish
  belongs_to :ingredient

  validates :dish_id, presence: true
  validates :ingredient_id, presence: true

end

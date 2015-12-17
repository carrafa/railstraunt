class Seat < ActiveRecord::Base

  belongs_to :table
  has_many :dishes, through: :orders

end

class Guest < ActiveRecord::Base

  belongs_to :party
  has_many :dishes, through: :orders

end

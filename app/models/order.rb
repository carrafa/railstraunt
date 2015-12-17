class Order < ActiveRecord::Base

  belongs_to :seats
  belongs_to :dishes

end

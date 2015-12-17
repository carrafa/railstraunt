class Order < ActiveRecord::Base

  belongs_to :guests
  belongs_to :dishes

end
